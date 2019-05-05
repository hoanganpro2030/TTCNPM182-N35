@extends('template.master')
@section('content')
<div class="container">
<div id="content" class="space-top-none">
	<div class ="main-content">
		<div class="row">
			@include('template.user_option')
			
			<h1 style="color:white">Lich su dat hang</h1>

			<div class="space60">&nbsp;</div>

			<div class="col-sm-9">

				@foreach ($orders as $order)
					<?php
						$order_detail = DB::table('order_detail')->where('oderID',$order->id)->get();
					?>
					<p>Ngay dat hang: {{$order->created_at}}</p>
					<div class="space20">&nbsp;</div>
					<table class="table" 
						style="background-color:white;border-radius:10px;color:black">
					<thead>
					<tr>
						<th>Ten San Pham</th>
						<th>So Luong</th>
						<th>Gia San Pham</th>
					</tr>
					</thead>
					<tbody>
					@foreach ($order_detail as $detail)
					<?php $product=DB::table('products')->where('id',$detail->productID)->first();?>
					<tr>
						<td>{{$product->name}}</td>
						<td>{{$product->price}}</td>
						<td>{{$detail->quantity}}</td>
					</tr>
					@endforeach
					</tbody>
				@endforeach
								
			</div>
			
		</div>
	</div>
</div>
</div> <!-- .container -->
<!-- @endsection -->