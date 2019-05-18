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
	<style>
.dropbtn {
  cursor: pointer;
}



.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  overflow: auto;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}
.dropli :hover{
	background-color: #ddd;
}

.myDropdown li a:hover {background-color: #ddd;}

.show {display: block;}
</style>
</head>
<body >

	<div class="header">
		<div class="container">
			
			<a class="logo"><img src="{{url('assets/dest/images/logo.png')}}" alt="" ></a>	
			<div class="header-right" style="background-color: #0277b8;">
					<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
					<div class="visible-xs clearfix"></div>
					<nav class="main-menu">
						<ul class="l-inline ov">
							<li><a href="{{route('index.getIndex')}}">Trang chủ</a></li>
							<li><a href="{{route('about')}}">Giới thiệu</a></li>
							<li><a href="{{route('contact')}}">Liên hệ</a></li>		
							
							
						</ul>
						
					<div class="clearfix"></div>
					</nav>	
						
		</div>
		<div class ="header-account">
			<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
			<div class="visible-xs clearfix"></div>
			<nav class="main-account">		
				<ul class ="l-inline ov">
						<li><a href="{{route('user.inform')}}" style ="font-size: 16px;margin-right:10px;color:red">{{Auth::User()->name}} <i class="fa fa-user fa-lg"></i></a> </li>
						<li><a href="{{route('signout.logout')}}" style ="font-size: 16px;margin-left:14px; color:red"> Đăng xuất<i class="fa fa-sign-out fa-lg"></i></a> </li>			
				</ul>	
			</nav>
		</div>
		<br>
		
		<div class="beta-comp">
	
				<form role="search" method="post" id="searchform" action="{{route('search')}}">
					<input type="hidden" name ="_token" value ="{{csrf_token()}}">
					<input type="text" value="" name="key" id="s" rows="10" placeholder="Nhập từ khóa..." style="color:black"> 
					<input type ="hidden" name ="from" value="0">
					<input type ="hidden" name ="to" value="0">
					@if (count($errors)>0)
            <div class="alert alert-danger">
            	<ul>
                @foreach ($errors->all() as $error)
                    <li>{{$error}}</li>
                @endforeach
                </ul>
            </div>
            @endif
			
					<button class="fa fa-search" type="submit" id="searchsubmit" style="color:black"> </button>
				</form>
				
		</div>
		
		<?php
			$notes = DB::table('notifications')->where('userID',Auth::User()->id)->where('isNew',1)->get();
		?>

		<div class="shopping-cart">
			<a class="visible-xs beta-menu-toggle pull-right" href="#"><span class='beta-menu-toggle-text'>Menu</span> <i class="fa fa-bars"></i></a>
			<div class="visible-xs clearfix"></div>

			@if (count($notes)!=0)
			<a style ="font-size: 16px;margin-right:28px;color:blue" onclick="myFunction()" class="dropbtn">
				Thông báo 
				<span class="fa-stack" >
				    <!-- The icon that will wrap the number -->
				    <span class="fa fa-bell fa-stack-2x" style="color: #ffcc00" ></span>
				    <!-- a strongs element with the custom content, in this case a number -->
				    <strong class="fa-stack-1x" style="color: #fff; font-size: 12px;text-shadow: 0px 0px 5px 5px red;">
				        {{count($notes)}}
				    </strong>
				</span>
			</a>
			<div id="myDropdown" class="dropdown-content">
				<ul style="list-style: none;">
					@foreach($notes as $note)
					<?php
						$user = DB::table('users')->where('id',$note->customerID)->first();
					?>
					<li class="dropli"><a href="{{route('notification.getNotification',$note->id)}}">Bạn có một đơn hàng mới từ <span style="color: blue">{{$user->name}}</span></a></li>
					<span style="color: #000;margin-left: 15px">{{$note->created_at}}</span>
			    	@endforeach
				</ul>
			    
			</div>
			@else
			<a style ="font-size: 16px;margin-right:28px;color:red" onclick="myFunction()" class="dropbtn">
				Thông báo 
				<span class="fa-stack">
				    <!-- The icon that will wrap the number -->
				    <span class="fa fa-bell fa-stack-2x" style="color: #0277b8"></span>
				    <!-- a strongs element with the custom content, in this case a number -->
				    <strong class="fa-stack-1x" style="color: #fff; font-size: 12px">
				        {{count($notes)}}
				    </strong>
				</span>
			</a>
			<div id="myDropdown" class="dropdown-content">
				<ul style="list-style: none;">

					<li class="dropli"><a href="#home">Không có thông báo mới</span></a></li>

				</ul>
		    
			</div>
			@endif

			<a href="{{route('order.getCart')}}" style ="font-size: 16px;margin-right:10px;color:red">Giỏ hàng <i class="fa fa-shopping-cart fa-lg"></i></a>
		</div>

	
		</div> <!-- .container -->
	</div>

	@yield('content')


	<div id="footer" class="color-div">
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="widget">
							<h4 class="widget-title">Hỗ trợ</h4>
							<div>
								<ul>
									<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Chính sách đổi - trả - hoàn tiền</a></li>
									<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Chính sách khách sỉ</a></li>
									<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Phương thức vận chuyển</a></li>
									<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Phương thức thanh toán</a></li>
			
								</ul>
							</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="widget">
						<h4 class="widget-title">Dịch vụ</h4>
						<div>
							<ul>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Điều khoản sử dụng</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Chính sách bảo mật</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Giới thiệu hàng rong BKU</a></li>
								<li><a href="blog_fullwidth_2col.html"><i class="fa fa-chevron-right"></i> Hệ thống trung tâm</a></li>
		
							</ul>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
				 <div class="col-sm-10">
					<div class="widget">
						<h4 class="widget-title">Liên hệ</h4>
						<div>
							<div class="contact-info">
								<i class="fa fa-map-marker"></i>
								<p>Địa Chỉ: 268 Lý Thường Kiệt, Phường 14, Quận 10, Hồ Chí Minh.</p>
								<p>Email: hangrongbku@gmail.com.</p>
								<p>Số điện thoại: 19008198 </p>
							</div>
						</div>
					</div>
				  </div>
				</div>
				<div class="col-sm-3">
					<div class="widget">
						<h4 class="widget-title">Theo dõi chúng tôi</h4>
						<form action="#" method="post">
							<input type="email" name="your_email">
							<button class="pull-right" type="submit">Đăng ký <i class="fa fa-chevron-right"></i></button>
						</form>
					</div>
				</div>
			</div> 
		</div> <!-- .container -->
	</div> 
	<div class="copyright">
		<div class="container">
			<p class="pull-left">Copyright information (&copy;) 2019</p>
			<p class="pull-right pay-options">
				<a href="#"><img src="{{url('assets/dest/images/pay/master.png')}}" alt="" height="25px" width="40x" /></a>
				<a href="#"><img src="{{url('assets/dest/images/pay/visa.png')}}" alt="" height="21px" width="34x" /></a>
				<a href="#"><img src="{{url('assets/dest/images/pay/paypal.png')}}" alt="" height="21px" width="34x" /></a>
			</p>
			<div class="clearfix"></div>
		</div> <!-- .container -->
	</div> <!-- .copyright -->


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
	    <script>
        $("div.alert").delay(3000).slideUp();
    </script>
    <script>
		/* When the user clicks on the button, 
		toggle between hiding and showing the dropdown content */
		function myFunction() {
		  document.getElementById("myDropdown").classList.toggle("show");
		}

		// Close the dropdown if the user clicks outside of it
		window.onclick = function(event) {
		  if (!event.target.matches('.dropbtn')) {
		    var dropdowns = document.getElementsByClassName("dropdown-content");
		    var i;
		    for (i = 0; i < dropdowns.length; i++) {
		      var openDropdown = dropdowns[i];
		      if (openDropdown.classList.contains('show')) {
		        openDropdown.classList.remove('show');
		      }
		    }
		  }
		}
	</script>
</body>
</html>
