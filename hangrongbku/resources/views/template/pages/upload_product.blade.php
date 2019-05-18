@extends('template.master')
@section('content')
<div class="container">
	<div class ="main-content">
		<div class="space60">&nbsp;</div>
		<div class="row">
			@include('template.user_option')
			<div class=" col-sm-9 offset-2">
			
			@if ($message = Session::get('success'))
				<div class="alert alert-success alert-block">
					<button type="button" class="close" data-dismiss="alert">×</button>
						<strong>{{ $message }}</strong>
				</div>
				<img src="images/{{ Session::get('image') }}">
				@endif
				@if (count($errors) > 0)
					<div class="alert alert-danger">
						<strong>Ôi không!</strong> Có vấn đề xảy ra với hình ảnh của bạn.
						<ul>
							@foreach ($errors->all() as $error)
								<li>{{ $error }}</li>
							@endforeach
						</ul>
					</div>
				@endif
				<!-- <input type="hidden" name ="_token" value ="{{csrf_token()}}"> -->
				<form  method="POST" action="{{route('uploadProductSave')}}" enctype="multipart/form-data">
					@csrf
					<h4>Đăng bán sản phẩm</h4>
					<div class="space20">&nbsp;</div>
					<div class="form-group">
						<label for="exampleInputEmail1">Chọn hình ảnh</label>
						<input type="file" name="image" class="form-control" onchange="readURL(this);">
						<img id="mImage" src="" width="500px" heigh="500px">
						<script type="text/javascript" src="{{ URL::asset('js/script.js') }}"></script>
					</div>
					
				  	<div class="form-group">
					    <label for="exampleInputEmail1">Tên sản phẩm</label>
					    <input type="text" name="name" class="form-control col-sm-5" id="exampleInputPassword1"  >
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Loại sản phẩm</label>
					    <select class="form-control col-sm-5" id="exampleInputPassword1" name="cateID">
					    	<?php
					    		$categories = DB::select('select * from categories');
					    	?>
					    	@foreach($categories as $cate)
					    	
					    			<option value="{{$cate->id}}">{{$cate->name}}</option>
				
					    	@endforeach
					    	
					    </select>
					</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Giá bán</label>
                        <input type="number" class="form-control col-sm-5" id="exampleInputPassword1" name="price" >				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Số lượng</label>
                        <input type="number" class="form-control col-sm-5" id="exampleInputPassword1" name="quantity" >				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Mô tả sản phẩm</label>
                        <textarea class="ckeditor" id="summary-ckeditor" name="description"></textarea>
							<script src="{{ asset('vendor/unisharp/laravel-ckeditor/ckeditor.js') }}"></script>
							<script>
								CKEDITOR.replace('summary-ckeditor');
							</script><div class="space20">&nbsp;</div> 
					</div>
					<button type="submit" class="btn btn-success">Cập nhật</button>
					<div class="space20">&nbsp;</div>
				</form>
			</div> <!-- #content -->
		</div>
	</div>
	
</div> <!-- .container -->
@endsection