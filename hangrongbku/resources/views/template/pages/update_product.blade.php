@extends('template.master')
@section('content')
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

				<form action={{route('products.update')}} method="POST">
					<input type="hidden" name="pid" value="{{$products->id}}">
					<h4>Cập nhật sản phẩm</h4>
					<div class="space20">&nbsp;</div>
					<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputEmail1">Tên sản phẩm</label>
					    <input name="name" type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$products->name}}">
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Loại sản phẩm</label>
					    <select class="form-control col-sm-5" id="exampleInputPassword1" name="cateID">
					    	<?php
					    		$categories = DB::select('select * from categories');
					    	?>
					    	@foreach($categories as $cate)
					    		@if ($products->cateID == $cate->id)
					    			<option value="{{$cate->id}}" selected="selected">{{$cate->name}}</option>
					    		@else
					    			<option value="{{$cate->id}}">{{$cate->name}}</option>
					    		@endif
					    	@endforeach
					    	
					    </select>
					    <!-- <input name="cateID" type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$products->cateID}}"> -->
				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Giá bán</label>
                        <input name="price" type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$products->price}}">				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Số lượng</label>
                        <input name="quantity" type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$products->quantity}}">				  	</div>
				  	<div class="space20">&nbsp;</div>
				  	<div class="form-group">
					    <label for="exampleInputPassword1">Mô tả sản phẩm</label>
						<textarea class="ckeditor" id="summary-ckeditor" name="description"></textarea>
							<script src="{{ asset('vendor/unisharp/laravel-ckeditor/ckeditor.js') }}"></script>
							<script>
								CKEDITOR.replace('summary-ckeditor');
							</script>
                        <!-- <input name="description" type="text" class="form-control col-sm-5" id="exampleInputPassword1" placeholder="Nguyễn Văn A" value="{{$products->description}}">				  	</div> -->
				  	</div>
					<div class="space20">&nbsp;</div>
                    <div class="form-group">

						<input type="hidden" name ="_token" value ="{{csrf_token()}}">
                        <input type="submit" class="btn btn-primary" value="Cập nhật">
					<a href="{{route('products.remove', $products->id)}}" class="btn btn-primary">Xoá</a>

                    </div>
				</form>
			</div> <!-- #content -->
		</div>
	</div>
	
</div> <!-- .container -->
@endsection