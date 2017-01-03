<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Solusi extends Model
{
    public function penyakits(){
    	return $this->belongsToMany('App\Penyakit');
    }
}
