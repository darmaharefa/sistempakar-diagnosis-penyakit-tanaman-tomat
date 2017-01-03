<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Penyakit extends Model
{

    public function solusis(){
    	return $this->belongsToMany('App\Solusi');
    }
}
