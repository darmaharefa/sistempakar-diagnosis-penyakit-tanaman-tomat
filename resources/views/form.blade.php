@extends('nomain')

@section('content')

<div class="container">

	<div class="row">
		<div class="col-md-6 col-md-offset-3">
			<center><h3>Tabel Gejala</h3></center>
			<hr>
		</div>

		{{-- <div class="col-md-6">
			<center><h1>Solusi</h1></center>
			<hr>
		</div> --}}
	</div>


    <div class="row">
    	{{-- Tabel Gejala --}}
		<div class="col-md-6 col-md-offset-3">
			<div class="panel panel-default">	
				<div class="panel-body">	
						<form action="{{ url(action("Controller@prosesGejala")) }}" method="POST" class="form-horizontal" role="form">
				{{ csrf_field() }}
				@foreach($gejalas as $gejala)
					<div class="form-group">
			    		<label for="{{ $gejala->kode }}" class="col-md-9 control-label" style="text-align:left">{{ $gejala->nama }} ?</label>
			    		<input type="radio" name="{{ $gejala->kode }}" value="1">Ya
			    		<input type="radio" name="{{ $gejala->kode }}" value="0" style="margin-left: 10px" checked>Tidak
			    	</div>
				@endforeach

				<div class="form-group">
					<div class="col-md-12">
						<button type="submit" class="btn btn-primary btn-block">Diagnosa</button>
					</div>
				</div>
			</form>
				</div>
			</div>
		</div>

		{{-- Solusi --}}
		{{-- <div class="col-md-6">
			<table class="table table-hover">
				<tbody>
					<tr>
						<td colspan="2">Gambar</td>
					</tr>
					<tr>
						<td><b>Nama Penyakit / Hama </b></td>
						<td>: Penyakit Unyu</td>
					</tr>
					<tr>
						<td><b>Gejala</b> </td>
						<td>: Meriang</td>
					</tr>
					<tr>
						<td><b>Solusi</b> </td>
						<td>: Minum cucu</td>
					</tr>
				</tbody>
			</table>
		</div> --}}
   	</div>
 </div>


@endsection