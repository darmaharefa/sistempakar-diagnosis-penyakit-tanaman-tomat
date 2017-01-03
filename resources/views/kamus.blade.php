@extends('nomain')

@section('content')

<div class="container">

	<div class="row">
		@foreach($data as $d)
		<div class="col-md-3 ">
				<h1>{{ $d->nama }}</h1>
				<p>{{ $d->desk }}</p>
		</div>
		@endforeach
   	</div>
 </div>


@endsection