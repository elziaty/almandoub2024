<?php

namespace App\Http\Controllers\api\v4;

use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\Vote;
use App\Model\VoteAnswer;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class VotesController extends Controller
{
    public function votes_list(Request $request)
    {
        $user = Helpers::get_customer($request);
        $votes = Vote::where('published', 1)
            ->latest()
            ->paginate($request['limit'], ['*'], 'page', $request['offset']);
        $votes->map(function ($vote) use ($user) {
            // get all user answers count for this vote
            $vote->total_answers_count = VoteAnswer::where('vote_id', $vote->id)->get()->sum(function ($answer) {
                return $answer->countUserAnswers();
            });
            // get the current user answer
            $vote->user_answer = VoteAnswer::where('vote_id', $vote->id)->whereHas('userAnswers', function ($q) use ($user) {
                $q->where('user_id', $user->id);
            })->first()->id ?? null;
            $vote->answers = VoteAnswer::where('vote_id', $vote->id)->get()->map(function ($answer) use ($vote) {
                $answer->vote_count = $answer->countUserAnswers();
                $answer->percentage = $vote->total_answers_count > 0 ? round($answer->vote_count / $vote->total_answers_count * 100) : 0;
                return $answer;
            });
            return $vote;
        });
        $data = array();
        $data['total_size'] = $votes->total();
        $data['limit'] = $request->limit;
        $data['offset'] = $request->offset;
        $data['votes'] = $votes;
        return response()->json($data, 200);
    }

    public function votes_detail($vote_id, Request $request)
    {
        $vote = Vote::where('id', $vote_id)->first();
        if ($vote == null) {
            return response()->json(['errors' => translate('Vote_not_found')], 403);
        }
        $vote->total_answers_count = VoteAnswer::where('vote_id', $vote->id)->get()->sum(function ($answer) {
            return $answer->countUserAnswers();
        });
        $vote->user_answer = VoteAnswer::where('vote_id', $vote->id)->whereHas('userAnswers', function ($q) use ($request) {
            $q->where('user_id', Helpers::get_customer($request)->id);
        })->first()->id ?? null;
        $vote->answers = VoteAnswer::where('vote_id', $vote->id)->get()->map(function ($answer) use ($vote) {
            $answer->vote_count = $answer->countUserAnswers();
            $answer->percentage = $vote->total_answers_count > 0 ? round($answer->vote_count / $vote->total_answers_count * 100) : 0;
            return $answer;
        });
        return response()->json($vote, 200);
    }

    public function votes_submit(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'vote_id' => 'required',
            'answer_id' => 'required',
        ]);

        if ($validator->errors()->count() > 0) {
            return response()->json(['errors' => Helpers::error_processor($validator)]);
        }

        $vote = Vote::where('id', $request->vote_id)->where('published', 1)->first();
        if ($vote == null) {
            return response()->json(['errors' => translate('Vote_not_found')], 403);
        }

        $answer = $vote->answers()->where('id', $request->answer_id)->first();
        if ($answer == null) {
            return response()->json(['errors' => translate('Answer_not_found')], 403);
        }

        $user_answer = $answer->userAnswers()->where('user_id', Helpers::get_customer($request)->id)->first();
        if ($user_answer != null) {
            return response()->json(['errors' => translate('You_have_already_voted')], 403);
        }

        $answer->userAnswers()->create([
            'user_id' => Helpers::get_customer($request)->id,
            'vote_answer_id' => $answer->id,
        ]);

        return response()->json(['message' => translate('Your_vote_has_been_submitted')], 200);
    }


}
