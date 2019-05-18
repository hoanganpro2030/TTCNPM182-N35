@extends('template.master')
@section('content')
<div class="container">
	<div id="content">
		<div class="row">
			<div class="col-sm-9">

				<div class="row">
					<div class="col-sm-4">
						<img src="{{url('assets/dest/products/' . $product->image .'')}}" alt="">
					</div>
					<div class="col-sm-8">
						<div class="single-item-body">
							<p class="single-item-title">{{mb_strtoupper($product->name)}}</p>
							<p class="single-item-price">
								<span class="flash-sale">{{number_format($product->price,0,',','.')}} đ</span>
							</p>
						</div>

						<div class="clearfix"></div>
						<div class="space20">&nbsp;</div>

						<div class="single-item-desc">
								<p>Liên hệ người bán: <a href="" style="color: blue">{{$seller->name}}</a></p>
								<div class="space20">&nbsp;</div>
								<p>Số điện thoại đặt hàng trực tiếp: <a style="color: blue">{{$seller->phone}}</a></p>
						</div>
						<div class="space20">&nbsp;</div>
						@if (count($errors)>0)
                            <div class="alert alert-danger">
                                <ul>
                                    @foreach ($errors->all() as $error)
                                        <li>{{$error}}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif
						<p>Số lượng:</p>
						<div class="single-item-options">
							<form action="{{route('order.postAddToCart')}}" method="post">
								<!-- <select class="wc-select" name="quantity" style="color: #000">
									
									<option value="1">1</option>
									<option value="2">2</option>
									<option value="3">3</option>
									<option value="4">4</option>
									<option value="5">5</option>
								</select> -->
								<input class="wc-select" name="quantity" style="color: #000" type="number">
								<input type="hidden" name="pid" value="{{$product->id}}">
								<input type="hidden" name="_token" value="{{csrf_token()}}">
								<!-- <a class="add-to-cart" href="{{route('order.addToCart',[$product->id,Auth::User()->id])}}"><i class="fa fa-shopping-cart"></i></a> -->
								<input type="submit" class="add-to-cart" value="Add">
							</form>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

				<div class="space40">&nbsp;</div>
				<div class="woocommerce-tabs">
					<ul class="tabs">
						<li><a href="#tab-description">Description</a></li>
						<li><a href="#tab-reviews">Reviews (0)</a></li>
					</ul>

					<div class="panel comment" id="tab-description">
					<input type="hidden" id="xxx" value="{{$product->description}}">
						<?php
							echo htmlspecialchars_decode($product->description);
						?>
					</div>
					<div class="panel" id="tab-reviews">

						<script type="text/javascript">
							var i = 0;
						</script>
						<?php $i = 0; ?>
						@foreach ($comments as $comment)
							<?php 
								$user = DB::table('users')->where('id',$comment->userID)->first();
							?>
							<div class="row">
								<label style="color: blue"><a href="#">{{$user->name}} :</a></label>
								
								<div id="{{$i}}" class="comment"></div>
							</div>
							<input type="hidden" id="ip{{$i}}" value="{{$comment->content}}">
							<?php $i++; ?>
							<script type="text/javascript">

								var a = document.getElementById("ip" +i).value;
								console.log(i);
								document.getElementById(""+i+"").innerHTML = a;
								i+=1;
							</script>
							<hr>
						@endforeach
						
						<form action="{{route('product.postComment')}}" method="post">
							<textarea class="ckeditor" id="summary-ckeditor" name="comment"></textarea>
							<script src="{{ asset('vendor/unisharp/laravel-ckeditor/ckeditor.js') }}"></script>
							<script>
								CKEDITOR.replace('summary-ckeditor');
							</script>
							<input type="hidden" name="pid" value="{{$product->id}}">
							<input type="hidden" name="_token" value="{{csrf_token()}}">
							<input type="submit" class="btn btn-success" value="Comment">
						</form>
					</div>
				</div>
				<div class="space50">&nbsp;</div>


<!-- 				<script type="text/javascript">
					var i = 0;
				</script>
				<?php $i = 0; ?>
				@foreach ($comments as $comment)
					<div id="{{$i}}">{{$comment->content}}</div>
					<input type="hidden" id="ip{{$i}}" value="{{$comment->content}}">
					<?php $i++; ?>
					<script type="text/javascript">

						var a = document.getElementById("ip" +i).value;
						console.log(i);
						document.getElementById(""+i+"").innerHTML = a;
						i+=1;
					</script>
				@endforeach -->


				<div class="beta-products-list">
					<h4>Related Products</h4>

					<?php $i=0?>
							@for( ; $i < count($relatedPd) ;)
							@if ($i % 3 == 0)
							<div class="row">

								@for($j=0 ; $j<3; $j++)
								@if($i < count($relatedPd))
								<div class="col-sm-4">
									<div class="single-item">
										<div class="single-item-header">
											<a href="{{route('products.getProduct',$relatedPd[$i]->id)}}"><img src="{{url('assets/dest/products/' . $relatedPd[$i]->image .'')}}" alt="" height="200pxs" margin-top="10px"></a>
										</div>
										<div class="single-item-body"> 
											<p class="single-item-title">{{mb_strtoupper($relatedPd[$i]->name)}}</b></p>
											<p class="single-item-price">
												<span class='flash-sale'>{{number_format($relatedPd[$i]->price,0,',','.')}} đ</span>
											</p>
										</div>
										<div class="single-item-caption">
											<a class="add-to-cart pull-left" href="shopping_cart.html"><i class="fa fa-shopping-cart"></i></a>
											<a class="beta-btn primary" href="product.html">Details <i class="fa fa-chevron-right"></i></a>
											<div class="clearfix"></div>
										</div>
								</div>
							</div>
							<?php $i++?>
								@endif
								@endfor
						</div>
						<div class="space60">&nbsp;</div>
						@endif
						@endfor
				</div> <!-- .beta-products-list -->
			</div>
			<div class="col-sm-3 aside">
				<div class="widget">
					<h3 class="widget-title">Best Sellers</h3>
					<div class="widget-body">
						<div class="beta-sales beta-lists">
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html">
								<img src="assets/dest/images/products/sales/1.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/2.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/3.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/4.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- best sellers widget -->
				<div class="widget">
					<h3 class="widget-title">New Products</h3>
					<div class="widget-body">
						<div class="beta-sales beta-lists">
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/1.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/2.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/3.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
							<div class="media beta-sales-item">
								<a class="pull-left" href="product.html"><img src="assets/dest/images/products/sales/4.png" alt=""></a>
								<div class="media-body">
									Sample Woman Top
									<span class="beta-sales-price">$34.55</span>
								</div>
							</div>
						</div>
					</div>
				</div> <!-- best sellers widget -->
			</div>
		</div>
	</div> <!-- #content -->
</div> <!-- .container -->
@endsection