@extends('template.master')
@section('content')
<div class="container">
	<div class ="main-content">
		<div class="row">
			@include('template.user_option')
			<div class=" col-sm-9 offset-2">
				<form>
					<h4>Thông tin tài khoản</h4>
					<div class="space20">&nbsp;</div>
					<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputEmail1">Email address</label>
					    <input type="email" class="form-control col-sm-5" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="vana@gmail.com">
					    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Họ và tên</label>
					    <input type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A">
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Ngày sinh</label>
					    <input type="date" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A">
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Giới tính</label>
					    
					    <select class="form-control col-sm-5" name="sex">
						  <option value="volvo">Nam</option>
						  <option value="saab">Nữ</option>
						</select>
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Số điện thoại</label>
					    <input type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A">
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Địa chỉ</label>
					    <input type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A">
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<button type="submit" class="btn btn-primary">Cập nhật</button>
				</form>
			</div> <!-- #content -->
		</div>
	</div>
	
</div> <!-- .container -->
@endsection