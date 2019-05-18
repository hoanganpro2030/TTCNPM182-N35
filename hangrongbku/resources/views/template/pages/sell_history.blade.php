@extends('template.master')
@section('content')
<div class="container">
<div id="content" class="space-top-none">
	<div class ="main-content">
		<div class="row">
			<div class="space60">&nbsp;</div>

			@include('template.user_option')
			
			
			<div class="col-sm-9">
				<h4 style="color:white">Lịch sử bán hàng</h4>
				<div class="space20">&nbsp;</div>
				@if(Session::has('message'))
                    <div class="alert alert-success">{{Session::get('message')}}</div>
                @endif

				@if (count($errors) > 0)
					<div class="alert alert-danger">
						<ul>
							@foreach ($errors->all() as $error)
								<li>{{ $error }}</li>
							@endforeach
						</ul>
					</div>
				@endif
				@foreach ($notes as $note)
					<div class="space10">&nbsp;</div>
					<a href="{{route('notification.getNotification',$note->id)}}" title="Xem chi tiết">
					<table class="table" 
						style="background-color:white;border-radius:10px 10px 0 0;color:black; box-shadow: 0px 0px 10px 0px	white">
						
					<thead>
					<div class="space20">&nbsp;</div>
					<tr>
						<th>Tên Khách Hàng</th>
						<th>Ngày đặt</th>
						<th>Tình trạng</th>
						<th>Xóa</th>
					</tr>
					</thead>
					<tbody>

					<?php $customer=DB::table('users')->where('id',$note->customerID)->first();?>
					<tr>
						<td>{{$customer->name}}</td>
						<td>{{$customer->created_at}}</td>
						@if($note->isDone == 1)
						<td style="color: blue">Đã gửi hàng</td>
						@else
						<td style="color: red">Chưa gửi hàng</td>
						@endif
						<td><a href="{{route('notification.getRemoveNote',$note->id)}}" class="remove" title="Remove this item"><i class="fa fa-trash-o" style= "color:red; font-size: 20px" onclick="return confirm('Bạn chắc chắn muốn xóa thông báo này ?')"></i></a></td>
					</tr>
					</tbody>
					</table>
					</a>
					@if($note->isNew==1)
						<p style="color: yellow; font-weight: bold">Chưa đọc</p>
					@endif
					<hr/>
				@endforeach
			</div>
		</div>
	</div>
</div>
</div> <!-- .container -->
@endsection