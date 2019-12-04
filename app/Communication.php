<?php

namespace Firmen;


use Illuminate\Database\Eloquent\Model;

class Communication extends Model
{

    public function praktikum()
    {
        return $this->hasOne(Praktikum::class);
    }
    public function contactreason()
    {
        return $this->hasOne('Firmen\ContactReason','id','contact_reason_id');
    }

    public function contact()
    {
        return $this->belongsto(Contact::class,'contact_id','id');
    }
    public function profession ()
    {
        return $this->hasOne(Profession::class,'id','profession_id');
    }
    public function contacttype()
    {
        return $this->belongsToMany('Firmen\ContactType');
    }
    public function user()
    {
        return $this->hasOne(User::class,'id','created_by');
    }
 
}