<?php

namespace Firmen;

use Illuminate\Database\Eloquent\Model;

class ContactType extends Model
{
    public function communication ()
    {
        return $this->belongsToMany('Firmen\Communication');
    }
}
