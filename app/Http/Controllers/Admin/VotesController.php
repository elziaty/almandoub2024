<?php

namespace App\Http\Controllers\Admin;

use App\CPU\Helpers;
use App\CPU\ImageManager;
use App\Http\Controllers\Controller;
use App\Model\Vote;
use App\Model\VoteAnswer;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Validation\Rule;


class VotesController extends Controller
{
    function list(Request $request)
    {

        $query_param = [];
        $search = $request['search'];
        if ($request->has('search')) {
            $key = explode(' ', $request['search']);
            $votes = Vote::where(function ($q) use ($key) {
                foreach ($key as $value) {
                    $q->Where('question', 'like', "%{$value}%");
                }
            })->orderBy('id', 'desc');
            $query_param = ['search' => $request['search']];
        } else {
            $votes = Vote::orderBy('id', 'desc');
        }

        $votes = $votes->paginate(Helpers::pagination_limit())->appends($query_param);
        return view('admin-views.vote.view', compact('votes', 'search'));
    }

    public function store(Request $request)
    {
        $request->validate([
            'vote_question' => 'required|string',
            'vote_answer' => 'required|array|min:2',
        ], [
            'question.required'     => 'question is required!',
            'vote_answer.required'  => 'vote_answer is required!',
            'vote_answer.min'       => 'vote_answer must be at least 2!',
        ]);

        try{
            // start transaction
            DB::beginTransaction();

            $vote = new Vote;
            $vote->question = $request->vote_question;
            $vote->save();

            foreach ($request->vote_answer as $key => $value) {
                if(!$value){
                    continue;
                }
                $vote_answer = new VoteAnswer;
                $vote_answer->answer = $value;
                $vote_answer->vote_id = $vote->id;
                $vote_answer->save();
            }

            // end transaction
            DB::commit();
        }catch(\Exception $e){
            // rollback transaction
            DB::rollback();
            Toastr::error($e->getMessage());
            Toastr::error(translate('something_went_wrong'));
            return back();
        }

        Toastr::success(translate('vote_added_successfully'));
        return back();
    }

    public function status(Request $request)
    {
        if ($request->ajax()) {
            $vote = Vote::find($request->id);
            $vote->published = $request->status ?? 0;
            $vote->save();
            $data = $request->status ?? 0;
            return response()->json($data);
        }
    }

    public function edit($id)
    {
        $vote = Vote::where('id', $id)->first();
        return view('admin-views.vote.edit', compact('vote'));
    }

    public function update(Request $request, $id)
    {
        $request->validate([
            'vote_question' => 'required|string',
            'vote_answer' => [
                'required_if:update_vote_answer,null',
                'array',
            ],
            'update_vote_answer' => [
                'required_if:vote_answer,null',
                'array',
            ],
        ], [
            'vote_question.required' => translate('Question_is_required!'),
            'vote_answer.required' => translate('Vote_answer_is_required!'),
            'update_vote_answer.required' => translate('Vote_answer_is_required!'),
        ]);

        try{
            // start transaction
            DB::beginTransaction();

            $vote = Vote::find($id);
            $vote->question = $request->vote_question;
            $vote->save();

            if($request->vote_answer){
                foreach ($request->vote_answer as $key => $value) {
                    if(!$value){
                        continue;
                    }
                    $vote_answer = new VoteAnswer;
                    $vote_answer->answer = $value;
                    $vote_answer->vote_id = $vote->id;
                    $vote_answer->save();
                }
            }
            if($request->update_vote_answer){
                foreach ($request->update_vote_answer as $key => $value) {
                    if(!$value){
                        continue;
                    }
                    $vote_answer = VoteAnswer::find($key);
                    if(!$vote_answer){
                        continue;
                    }
                    $vote_answer->answer = $value;
                    $vote_answer->vote_id = $vote->id;
                    $vote_answer->save();
                }
            }


            // end transaction
            DB::commit();
        }catch(\Exception $e){
            // rollback transaction
            DB::rollback();
            Toastr::error($e->getMessage());
            Toastr::error(translate('something_went_wrong'));
            return back();
        }

        Toastr::success(translate('vote_updated_successfully'));
        return back();
    }

    public function delete(Request $request)
    {
        Vote::where('id', $request->id)->delete();
        return response()->json();
    }

    public function answer_delete(Request $request)
    {
        VoteAnswer::where('id', $request->id)->delete();
        return response()->json();
    }
}
