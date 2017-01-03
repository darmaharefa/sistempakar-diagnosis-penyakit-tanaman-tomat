<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Routing\Controller as BaseController;
use Illuminate\Foundation\Validation\ValidatesRequests;
use Illuminate\Foundation\Auth\Access\AuthorizesRequests;

use Illuminate\Http\Request;
use App\Gejala;
use App\Penyakit;
use App\Solusi;

class Controller extends BaseController
{
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;

    public function index(){
    	return view('home');
    }

    public function konsultasi(){
    	$gejalas = Gejala::all();
    	return view('form')->with("gejalas", $gejalas);
    }

    public function prosesGejala(Request $request){

    	$G      = array();
        $data   = '';

    	for($i = 1 ; $i <= 16 ; $i++){
    		if($i < 10)
    			$temp = "G0"."$i";
    		else
    			$temp = "G"."$i";
    		
    		array_push($G, $request->$temp);
    	}

    	// Aturan (Rules)
    	$cekCocok = 0;
    	$penyakit = '';

    	// Rules 1 (R1)
    	if($G[0]){
    		$lokalCount = 1;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'P01';
    		}

    	}

    	// Rules 2 (R2)
    	if($G[1]){
    		$lokalCount = 1;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'P02';
    		}
    	}

    	// Rules 3 (R3)
    	if($G[2] == 1 and $G[3] == 1 and $G[4] == 1){
    		$lokalCount = 3;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'P03';
    		}
    	}

    	// Rules 4 (R4)
    	if($G[5] == 1 and $G[6] == 1){
    		$lokalCount = 2;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'P04';
    		}
    	}

    	// Rules 5 (R5)
    	if($G[7] == 1){
    		$lokalCount = 1;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'H01';
    		}
    	}

    	// Rules 6 (R6)
    	if($G[8] == 1){
    		$lokalCount = 1;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'H02';
    		}
    	}

    	// Rules 7 (R7)
    	if($G[9] == 1 and $G[10] == 1 and $G[11] == 1){
    		$lokalCount = 1;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'H03';
    		}
    	}

    	// Rules 8 (R8)
    	if($G[12] == 1 and $G[13] == 1){
    		$lokalCount = 2;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'H04';
    		}
    	}

    	// Rules 9 (R9)
    	if($G[14] == 1 and $G[15] == 1){
    		$lokalCount = 2;
    		if($lokalCount > $cekCocok){
    			$cekCocok = $lokalCount;
    			$penyakit = 'H05';
    		}
    	}

        if($penyakit != '')
            $data = Penyakit::with('solusis')->where('kode', $penyakit)->first();  

        // echo $data;
    	return view('hasil')->withData($data);
    }

    public function kamus(){
        $data = Penyakit::all();

        return view('kamus')->withData($data);
    }
}
