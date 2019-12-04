<?php

namespace Firmen;

use Illuminate\Database\Eloquent\Model;

class Job extends Model
{
    public function praktikum()
    {
        return $this->belongsToMany('Firmen\Praktikum');
    }
    
}
