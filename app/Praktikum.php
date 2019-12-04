<?php

namespace Firmen;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Praktikum extends Model
{
        use SoftDeletes;

        public function mystatus()
    {
        return $this->hasOne('Firmen\Status','id','status_id');
    }
    
   public function state()
    {
        return $this->hasOne('Firmen\State','id','state_id');
    }
    
    public function city()
    {
        return $this->belongsToMany('Firmen\City');
    }
    
    public function job()
    {
        return $this->belongsToMany('Firmen\Job');
    }
    

    public function bdepartment()
    {
        return $this->hasOne('Firmen\Bdepartment','id','bdepartment_id');
    }

    public function firmatitle()
    {
        return $this->hasOne('Firmen\Firmatitle','id','firma_title_id');
    }

    public function profession() 
    {
        return $this->hasOne(Profession::class);
    }

    public function contact () {
        return $this->hasMany(Contact::class);
    }
    	
    public function contract () {
        return $this->hasMany(Contract::class);
    }
        
    public function communication() 
    {
        return $this->hasMany(Communication::class);
    }
    public function user()
    {
        return $this->hasOne(User::class,'id','created_by');
    }
}
