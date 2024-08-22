<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Vote extends Model
{
    protected $casts = [
        'published'  => 'integer',
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];


    public function answers(){
        return $this->hasMany(VoteAnswer::class,'vote_id');
    }    

}
