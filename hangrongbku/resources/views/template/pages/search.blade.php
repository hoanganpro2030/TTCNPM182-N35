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
								<p class ="pull-left"> Tìm thấy {{count($products)}} sản phẩm </p>
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
											<a class="add-to-cart pull-left" href="shopping_cart.html"><i class="fa fa-shopping-cart"></i></a>
											<a class="beta-btn primary" href="product.html">Details <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>
									</div>
								</div>
							@endforeach
							</div>
							<div class="space60">&nbsp;</div>
							
						</div> <!-- .beta-products-list -->

						<div class="space50">&nbsp;</div>

					
					</div>
				</div> <!-- end section with sidebar and main content -->


			</div> <!-- .main-content -->
		</div> <!-- #content -->
	</div> <!-- .container -->
@endsection
