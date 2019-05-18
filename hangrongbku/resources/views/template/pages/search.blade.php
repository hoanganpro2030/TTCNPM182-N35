@extends('template.master')
@section('content')
 <div class="container"> 
		<div id="content" class="space-top-none">
			
			<div class="main-content">
				<div class="space60">&nbsp;</div>
				<div class="row">
					
					<div class="col-sm-9">
						<div class="beta-products-list">
							<h4>Tìm kiếm</h4>
							<div class="beta-products-details">
								<p class ="pull-left"> Tìm thấy {{count($products)}} sản phẩm liên quan đến từ khóa " {{$name}}"</p>
								
								<div class="clearfix"></div>
							</div>

				

							
							<div class="row">

							@foreach($products as $new)
								<div class="col-sm-4">
									<div class="single-item">
										<div class="single-item-header">
										<a href="{{route('product',$new->id)}}"><img src="{{url('assets/dest/products/' . $new->image .'')}}" alt="" height="200pxs" margin-top="10px"></a>
										</div>
										<div class="single-item-body"> 
											<p class="single-item-title">{{mb_strtoupper($new->name)}}</b></p>
											<p class="single-item-price">
												<span class='flash-sale'>{{number_format($new->price,0,',','.')}} đ</span>
											</p>
										</div>
										<div class="single-item-caption">
											<a class="add-to-cart pull-left" href="{{route('products.getProduct',$new->id)}}"><i class="fa fa-shopping-cart"></i></a>
										<a class="beta-btn primary" href="{{route('products.getProduct',$new->id)}}">Chi tiết <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>
									</div>
									<div class="space60">&nbsp;</div>
								</div>
								
							@endforeach
							</div>
							<div class="space60">&nbsp;</div>
							
						</div> <!-- .beta-products-list -->

						<div class="space50">&nbsp;</div>

					
					</div>
					<div class="col-sm-3 aside">
							<h3 class="widget-title" style ="color: yellow">Bộ lọc tìm kiếm</h3>
							<div class="price-get">
								<h5 style="color:white"> Khoảng giá </h5>
									
									<form role="search" method="post" id="searchform"  action="{{route('search-price')}}">
									<input type ="hidden" name ="name" value="{{$name}}">
									Từ :
									<input type="hidden" name ="_token" value ="{{csrf_token()}}">
									<input type="text" name="from" value="" style="color:black">
									
									Đến:
									<input type="text" name="to" value="" style="color:black">
									<br>
									<button class="submit-price" type="submit" id="pricesubmit" > Áp dụng </button>
									</form> 
								
									
							

							</div> <!-- best sellers widget -->
							
					</div>
				</div> <!-- end section with sidebar and main content -->
				
			</div> <!-- .main-content -->
		
		</div> <!-- #content -->
	
	</div> <!-- .container -->
@endsection
