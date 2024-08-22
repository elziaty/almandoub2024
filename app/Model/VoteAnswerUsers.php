<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class VoteAnswerUsers extends Model
{
    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    protected $fillable = [
        'vote_answer_id',
        'user_id',
    ];

    protected $table = 'votes_answers_users';

    public function voteAnswer(){
        return $this->belongsTo(VoteAnswer::class,'vote_answer_id');
    }

    public function user(){
        return $this->belongsTo(User::class,'user_id');
    }


}
