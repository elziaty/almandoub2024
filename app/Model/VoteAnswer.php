<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VoteAnswer extends Model
{
    protected $casts = [
        'published'  => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    protected $fillable = [
        'answer',
        'vote_id',
    ];

    protected $table = 'votes_answers';

    public function vote(){
        return $this->belongsTo(Vote::class,'vote_id');
    }

    public function userAnswers(){
        return $this->hasMany(VoteAnswerUsers::class,'vote_answer_id');
    }

    public function countUserAnswers(){
        return $this->userAnswers()->count();
    }


}
