<?php

namespace Firmen;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Contact extends Model
{
    use SoftDeletes;
    protected $table = 'contacts';
    
    public function praktikum()
    {
        return $this->belongsTo(Praktikum::class);
    }

    public function commnunication() 
    {
        return $this->hasMany(Communication::class);
    }
    public function user()
    {
        return $this->hasOne(User::class,'id','created_by');
    }
}


