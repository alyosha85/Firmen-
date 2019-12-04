<?php

namespace Firmen;

use Illuminate\Database\Eloquent\Model;

class Contract extends Model
{
    public function praktikum()
    {
        return $this->belongsTo(Praktikum::class);
    }
}
