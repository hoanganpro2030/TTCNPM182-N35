@extends('template.master')
@section('content')
<div class="container">
<div id="content" class="space-top-none">
	<div class ="main-content">
		<div class="row">
			<div class="space60">&nbsp;</div>

			@include('template.user_option')
			
		
			<div class="col-sm-9">
				<h4 style="color:white">Thông báo đặt hàng</h4>
				<div class="space20">&nbsp;</div>
					<div class="space10">&nbsp;</div>
					@if(Session::has('message'))
                        <div class="alert alert-success">{{Session::get('message')}}</div>
                    @endif
					<table class="table" 
						style="background-color:white;border-radius:10px 10px 0 0;color:black; box-shadow: 0px 0px 10px 0px	white">
						<p>Tên khách hàng: {{$n_customer->name}}</p>
						<p>Địa chỉ: {{$n_customer->address}}</p>
						<p>Số điện thoại: {{$n_customer->phone}}</p>
						<p>Ngày đặt hàng: {{$n_order->created_at}}</p>
					<thead>
					<div class="space20">&nbsp;</div>
					<tr>
						<th>Tên Mặt Hàng</th>
						<th>Giá Mặt Hàng</th>
						<th>Số Lượng</th>
					</tr>
					</thead>
					<?php $sumMoney=0; ?>
					<tbody>
					@foreach ($n_order_details as $detail)
					<?php $product=DB::table('products')->where('id',$detail->productID)->first();?>
					@if($product->sellerID == Auth::User()->id)
					<tr>
						<?php $sumMoney += $product->price*$detail->quantity; ?>
						<td>{{$product->name}}</td>
						<td>{{number_format($product->price,0,',','.')}} đ</td>
						<td>{{$detail->quantity}}</td>
					</tr>
					@endif
					@endforeach
					</tbody>
						
					</table>
					<hr/>
					<div class="row">
						<p class="col-md-9">Tổng tiền: {{number_format($sumMoney,0,',','.')}} đ</p>
						@if ($n_note->isDone==1)
							<p class="col-md-3">Tình trạng: Đã gửi hàng</p>
						@else
							<a class="btn btn-primary col-md-3" href="{{route('notification.getComfirm',$n_note->id)}}" onclick="return confirm('Xác nhận đã gửi hàng ?')">Xác nhận đã gửi</a>
						@endif
						
						
					</div>
			</div>
		</div>
	</div>
</div>
</div> <!-- .container -->
@endsection