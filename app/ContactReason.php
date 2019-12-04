<?php

namespace Firmen;

use Illuminate\Database\Eloquent\Model;

class ContactReason extends Model
{
    public function communication()
    {
    return $this->belongsto(Communication::class);
    }

}
