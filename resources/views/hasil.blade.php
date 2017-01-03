@extends('nomain')

@section('content')

<div class="container">

    <div class="row">

		{{-- Solusi --}}
		<div class="col-md-6 col-md-offset-3 box">
			<div class="panel panel-default">	
				<div class="panel-heading">	
					<h3><center><b>	Solusi</b></center></h3>
				</div>
				<div class="panel-body">	

			<table class="table table-hover">
				<tbody>
					<tr>
						<td><b>Nama Penyakit / Hama </b></td>
						@if( ! empty($data))
							<td>: {{$data->nama}}</td>
						@else
							<td>: Penyakit Tidak Bisa Didiagnosa</td>
						@endif
					</tr>
					<tr>
						<td colspan="2"><b>Solusi</b> </td>
					</tr>
						
						@if( ! empty($data))

							@foreach($data->solusis as $solusi)
							<tr>
								<td colspan="2"> - {{$solusi->nama}}</td>
							@endforeach
							</tr>
						@else
							<tr>
								<td>- Tidak Ada Solusi</td>
							</tr>
						@endif
				</tbody>

			</table>
			</div>
			</div>
			<a href="/konsultasi" class="button btn btn-primary">Diagnosa Lagi</a>
		</div>
   	</div>
 </div>


@endsection