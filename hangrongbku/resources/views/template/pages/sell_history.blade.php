@extends('template.master')
@section('content')
<div class="container">
<div id="content" class="space-top-none">
	<div class ="main-content">
		<div class="row">
			<div class="space60">&nbsp;</div>

			@include('template.user_option')
			
		
			<div class="col-sm-9">
				<h4 style="color:white">Lịch sử đặt hàng</h4>
				<div class="space20">&nbsp;</div>
				@foreach ($orders as $order)
					<?php
						$order_detail = DB::table('order_detail')->where('oderID',$order->id)->get();
					?>
					<div class="space10">&nbsp;</div>
					<table class="table" 
						style="background-color:white;border-radius:10px 10px 0 0;color:black; box-shadow: 0px 0px 10px 0px	white">
						<p>Ngày đặt hàng: {{$order->created_at}}</p>
					<thead>
					<div class="space20">&nbsp;</div>
					<tr>
						<th>Tên Mặt Hàng</th>
						<th>Giá Mặt Hàng</th>
						<th>Số Lượng</th>
					</tr>
					</thead>
					<tbody>
					@foreach ($order_detail as $detail)
					<?php $product=DB::table('products')->where('id',$detail->productID)->first();?>
					<tr>
						<td>{{$product->name}}</td>
						<td>{{number_format($product->price,0,',','.')}} đ</td>
						<td>{{$detail->quantity}}</td>
					</tr>
					@endforeach
					</tbody>
					</table>
					<hr/>
				@endforeach
			</div>
		</div>
	</div>
</div>
</div> <!-- .container -->
@endsection