<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Hàng Rong BKU </title>
	<link href='http://fonts.googleapis.com/css?family=Dosis:300,400' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css">
	<link rel="stylesheet" href="{{url('assets/dest/css/font-awesome.min.css')}}">
	<link rel="stylesheet" href="{{url('assets/dest/vendors/colorbox/example3/colorbox.css')}}">
	<link rel="stylesheet" href="{{url('assets/dest/rs-plugin/css/settings.css')}}">
	<link rel="stylesheet" href="{{url('assets/dest/rs-plugin/css/responsive.css')}}">
	<link rel="stylesheet" title="style" href="{{url('assets/dest/css/style.css')}}">
	<link rel="stylesheet" href="{{url('assets/dest/css/animate.css')}}">
	<link rel="stylesheet" title="style" href="{{url('assets/dest/css/huong-style.css')}}">
</head>
<body>
	<div class="header">
		<div class="container">
		<a><img src="{{url('assets/dest/images/pay/master.jpg')}}" alt="" height="120px" width="265px"/></a>	
		<div class="header-right" style="background-color: #0277b8;">
					<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
					<div class="visible-xs clearfix"></div>
					<nav class="main-menu">
						<ul class="l-inline ov">
							<li><a href="index.html">Trang chủ</a></li>
							<li><a href="#">Sản phẩm</a>
								<ul class="sub-menu">
									<li><a href="product_type.html">Sản phẩm 1</a></li>
									<li><a href="product_type.html">Sản phẩm 2</a></li>
									<li><a href="product_type.html">Sản phẩm 4</a></li>
								</ul>
							</li>
							<li><a href="about.html">Giới thiệu</a></li>
							<li><a href="contacts.html">Liên hệ</a></li>		
							
							
						</ul>
						
					<div class="clearfix"></div>
					</nav>	
						
		</div>
		<div class ="header-account">
			<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
			<div class="visible-xs clearfix"></div>
			<nav class="main-account">		
				<ul class ="l-inline ov">
						<li><a href="#" style ="font-size: 16px;margin-right:10px">Tài khoản <i class="fa fa-user fa-lg"></i></a> </li>
						<li><a href="#" style ="font-size: 16px;margin-left:14px"> Đăng xuất<i class="fa fa-sign-out fa-lg"></i></a> </li>			
				</ul>	
			</nav>
		</div>
		<br>
		<div class="beta-comp">
				<form role="search" method="get" id="searchform" action="/">
					<input type="text" value="" name="s" id="s" rows="10" placeholder="Nhập từ khóa..." />
					<button class="fa fa-search" type="submit" id="searchsubmit" "></button>
				</form>
		</div>

		<div class="shopping-cart">
			<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
			<div class="visible-xs clearfix"></div>
			<a href="#" style ="font-size: 16px;margin-right:10px">Giỏ hàng <i class="fa fa-shopping-cart fa-lg"></i></a>
		</div>

	</div>
		</div> <!-- .container -->
	</div>
	
	@yield('content')


	{{-- <div id="footer" class="color-div">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="widget">
						<h4 class="widget-title">Instagram Feed</h4>
						<div id="beta-instagram-feed"><div></div></div>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="widget">
						<h4 class="widget-title">Information</h4>
						<div>
							<ul>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Web Design</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Web development</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Marketing</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Tips</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Resources</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Illustrations</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
				 <div class="col-sm-10">
					<div class="widget">
						<h4 class="widget-title">Contact Us</h4>
						<div>
							<div class="contact-info">
								<i class="fa fa-map-marker"></i>
								<p>30 South Park Avenue San Francisco, CA 94108 Phone: +78 123 456 78</p>
								<p>Nemo enim ipsam voluptatem quia voluptas sit asnatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione.</p>
							</div>
						</div>
					</div>
				  </div>
				</div>
				<div class="col-sm-3">
					<div class="widget">
						<h4 class="widget-title">Newsletter Subscribe</h4>
						<form action="#" method="post">
							<input type="email" name="your_email">
							<button class="pull-right" type="submit">Subscribe <i class="fa fa-chevron-right"></i></button>
						</form>
					</div>
				</div>
			</div> <!-- .row -->
		</div> <!-- .container -->
	</div> <!-- #footer -->
	<div class="copyright">
		<div class="container">
			<p class="pull-left">Privacy policy. (&copy;) 2014</p>
			<p class="pull-right pay-options">
				<a href="#"><img src="{{url('assets/dest/images/pay/master.jpg')}}" alt="" /></a>
				<a href="#"><img src="{{url('assets/dest/images/pay/pay.jpg')}}" alt="" /></a>
				<a href="#"><img src="{{url('assets/dest/images/pay/visa.jpg')}}" alt="" /></a>
				<a href="#"><img src="{{url('assets/dest/images/pay/paypal.jpg')}}" alt="" /></a>
			</p>
			<div class="clearfix"></div>
		</div> <!-- .container -->
	</div> <!-- .copyright --> --}}


	<!-- include js files -->
	<script src="{{url('assets/dest/js/jquery.js')}}"></script>
	<script src="{{url('assets/dest/vendors/jqueryui/jquery-ui-1.10.4.custom.min.js')}}"></script>
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
	<script src="{{url('assets/dest/vendors/bxslider/jquery.bxslider.min.js')}}"></script>
	<script src="{{url('assets/dest/vendors/colorbox/jquery.colorbox-min.js')}}"></script>
	<script src="{{url('assets/dest/vendors/animo/Animo.js')}}"></script>
	<script src="{{url('assets/dest/vendors/dug/dug.js')}}"></script>
	<script src="{{url('assets/dest/js/scripts.min.js')}}"></script>
	<script src="{{url('assets/dest/rs-plugin/js/jquery.themepunch.tools.min.js')}}"></script>
	<script src="{{url('assets/dest/rs-plugin/js/jquery.themepunch.revolution.min.js')}}"></script>
	<script src="{{url('assets/dest/js/waypoints.min.js')}}"></script>
	<script src="{{url('assets/dest/js/wow.min.js')}}"></script>
	<!--customjs-->
	<script src="{{url('assets/dest/js/custom2.js')}}"></script>
	<script>
	$(document).ready(function($) {    
		$(window).scroll(function(){
			if($(this).scrollTop()>150){
			$(".header-bottom").addClass('fixNav')
			}else{
				$(".header-bottom").removeClass('fixNav')
			}}
		)
	})
	</script>
</body>
</html>
