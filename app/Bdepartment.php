<?php

namespace Firmen;

use Illuminate\Database\Eloquent\Model;

class Bdepartment extends Model
{
   public function job()
   {
    return $this->hasMany(Job::class,'id','job_id');

   }
}
