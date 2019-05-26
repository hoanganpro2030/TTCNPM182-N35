@extends('admin.master')
@section('content')
<div id="page-wrapper">
				<div class="graphs">
					<div class="col_3">
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-mail-forward"></i>
								<div class="stats">
								  <h5>{{count($orders)}}</h5>
								  <div class="grow">
									<p>Đơn hàng</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-users"></i>
								<div class="stats">
								  <h5>{{count($users)}}</h5>
								  <div class="grow grow1">
									<p>Người dùng</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-eye"></i>
								<div class="stats">
								  <h5>{{count($products)}}</h5>
								  <div class="grow grow3">
									<p>Sản phẩm</p>
								  </div>
								</div>
							</div>
						 </div>
						 <div class="col-md-3 widget">
							<div class="r3_counter_box">
								<i class="fa fa-usd"></i>
								<div class="stats">
								  <h5>{{$rating}}</h5>
								  <div class="grow grow2">
									<p>Lượt đánh giá</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>


		
				</div>
			<!--body wrapper start-->
			</div>
			 <!--body wrapper end-->
		</div>
@endsection