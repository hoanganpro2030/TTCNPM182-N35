@extends('template.master')
@section('content')
<div class="space60">&nbsp;</div>
<div class="container">
	<div class ="main-content">
		<div class="row">
			@include('template.user_option')
			<div class=" col-sm-9 offset-2">
			@if (count($errors)>0)
            <div class="alert alert-danger">
            	<ul>
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
                </ul>
            </div>
            @endif
            
            <div class="row">

				<form class="col-md-7" action={{route('editUser')}} method= "post" enctype="multipart/form-data">
					<h4>Thông tin tài khoản</h4>
					<div class="space20">&nbsp;</div>
					@if(Session::has('message'))
					<p>
						{{Session::get('message')}}
					</p>
					@endif
					<div class="space20">&nbsp;</div>

					<div class="form-group">
					    <label for="exampleInputPassword1">Họ và tên</label>
					  <input type="text" name="name" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$user->name}}">
				  	</div>

				  	
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputEmail1">Email address</label>
					    <input type="email" name="email" class="form-control col-sm-5" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="vana@gmail.com" value="{{$user->email}}">
					
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	
				  	<div class="form-group">
						<label for="exampleInputEmail1">Cập nhật ảnh đại diện</label>
						<input type="file" name="image" class="form-control" onchange="readURL(this);">
						<img id="mImage" src="" width="500px" heigh="500px">
						<script type="text/javascript" src="{{ URL::asset('js/script.js') }}"></script>
					</div>
					<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Ngày sinh</label>
					    <input type="date" name="dayOfBirth"class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$user->dateOfBirth}}">
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Giới tính</label>
					    
					    <select  class="form-control col-sm-5" name="sex" value="{{$user->sex}}">
					    	@if(Auth::User()->sex==1)
						  <option selected="selected" value="1">Nam</option>
						  <option value="0">Nữ</option>
						  @else
						  <option value="1">Nam</option>
						  <option selected="selected" value="0">Nữ</option>
						  @endif
						</select>
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Số điện thoại</label>
					    <input type="text" name="phone" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$user->phone}}">
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Địa chỉ</label>
					    <input type="text" name="address" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$user->address}}">
				  	</div>
					  <div class="space20">&nbsp;</div>
				<input type="hidden" name ="_token" value ="{{csrf_token()}}">
				  	<button type="submit" class="btn btn-primary">Cập nhật</button>
				</form>
				
				
				<div class="col-md-5">
					<h4></h4>
					<div class="space60">&nbsp;</div>
					<div class="space60">&nbsp;</div>
					
					<div class="space60">&nbsp;</div>
						<img src="{{url('assets/dest/products/' . Auth::User()->avatar .'')}}" alt="" height="300px" width="300" style="border-radius: 200px; margin-left: 50px; box-shadow: 0px 0px 10px 5px #fff">
					</div>
				<div class="space60">&nbsp;</div>
			</div>
			</div> <!-- #content -->
			
		</div>
	</div>
	
</div> <!-- .container -->
@endsection