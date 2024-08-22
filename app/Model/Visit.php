<?php

namespace App\Model;

use Illuminate\Database\Eloquent\Model;

class Visit extends Model
{
    protected $casts = [
        'created_at' => 'datetime',
        'updated_at' => 'datetime',
    ];

    protected $guarded = ['id'];


    public function target()
    {
        return $this->morph(Seller::class,'target');
    }

    public function user()
    {
        return $this->BelongsTo(User::class);
    }

}
