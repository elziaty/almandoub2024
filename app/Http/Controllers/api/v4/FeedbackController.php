<?php

namespace App\Http\Controllers\api\v4;

use App\CPU\Helpers;
use App\Http\Controllers\Controller;
use App\Model\FeedbackCategory;
use App\Model\Feedback;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class FeedbackController extends Controller
{
    public function get_feedback_categories(Request $request)
    {
        $categories = FeedbackCategory::latest()->get()->map(function ($category) {
            return [
                'id' => $category->id,
                'title' => $category->title,
            ];
        });
        return response()->json($categories, 200);
    }

    public function submit_feedback(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'title' => 'required|string|max:255',
            'description' => 'required|max:1000',
            'category_id' => 'required|exists:feedback_categories,id',
        ]);

        if ($validator->errors()->count() > 0) {
            return response()->json(['errors' => Helpers::error_processor($validator)]);
        }

        Feedback::create([
            'title' => $request->title,
            'description' => $request->description,
            'category_id' => $request->category_id,
            'category' => FeedbackCategory::find($request->category_id)->title,
            'user_id' => Helpers::get_customer($request)->id,
        ]);

        return response()->json(['message' => translate('Feedback has been submitted, Thank you')], 200);
    }



}
