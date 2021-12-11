<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>Hotel Project</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Hotel Project Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<!-- //js -->
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<!-- start-smoth-scrolling -->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
		    jQuery(document).ready(function ($) {
		        $(".scroll").click(function (event) {
		            event.preventDefault();
		            $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
		        });
		    });
		</script>
	<!-- start-smoth-scrolling -->
</head>
<body>
<!-- banner -->
<div class="banner page-head">
	<div class="container">
		<div class="header-nav">
			<div class="logo">
				<h1><a href="index.html"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a></h1>
			</div>
			<div class="navigation">
				<span class="menu"><img src="images/menu.png" alt=""/></span>
				<nav class="cl-effect-11" id="cl-effect-11">
					<ul class="nav1">
						<li><a href="Default.aspx"  data-hover="HOME">HOME</a></li>
						<li><a class="active" href="About.aspx" data-hover="ABOUT">ABOUT</a></li>
						<li><a href="CancelBooking.aspx" data-hover="BOOKING">BOOKING</a></li>
						<li><a href="Contact.aspx" data-hover="CONTACT">CONTACT</a></li>
						<li><a href="Admin_Login.aspx" data-hover="Admin">ADMIN</a></li>
					</ul>
				</nav>
				<!-- script for menu -->
					<script>
					    $("span.menu").click(function () {
					        $("ul.nav1").slideToggle(300, function () {
					            // Animation complete.
					        });
					    });
					</script>
				<!-- //script for menu -->
				
			</div>
			<div class="social-icons">
				<ul>
					<li><a href="#" class="f1"></a></li>
					<li><a href="#" class="f2"></a></li>
					<li><a href="#" class="f3"></a></li>
					<li><a href="#" class="f4"></a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //banner -->
<!--about-->
	<!--start-about-->
	<div class="about">
		<div class="container">
			<div class="about-top heading">
				<h2 class="tittle-one">ABOUT</h2>
			</div>
			<div class="about-bottom text-center">
				<img src="images/abt-3.jpg" alt="" />
				<h4>We are Final Semester Cloud Computing students ,doing this website as a part of our project but we intend to expand in the near future</h4>
				<p>Greetings!

My name is Angkon Biswas and I'm the owner of Hotel Project. I'm a person with a passion for Hotel Services.

I started Hotel Project with the idea of being able to offer the very best Hotel to help Travellers

If you are like me then you Have trouble coming up with ideas, want the best prices, avail our services

If so, I've got your back!

I am committed to

Premiun Services
Offer you the best Price


If you need anything don't hesitate to contact me!

All the best,

Angkon Biswas,Sumit Pal</p>
			</div>
		</div>
	</div>
	<!--end-vision-->
	<!--start-vision-->
	<div class="vision">
		<div class="container">
			<div class="vision-top heading">
				<h3 class="tittle">SPECIAL DELUXE ROOMS</h3>
			</div>
			<div class="vision-bottom">
				<div class="col-md-8 vision-left">
					<div class="col-md-5 vsn-left">
						<img src="images/13.jpg" alt="" />
					</div>
					<div class="col-md-7 vsn-right">
						<h4>The Best Deluxe Rooms available in town</h4>
						<p>We only offer you the best Hotels and services that is available in each town with a gurantee to satisfy all of your needs with utmost care.</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 vision-right">
					<ul>
						<li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Free Wifi</a></li>
						<li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Free Parking</a></li>
						<li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Spa Services </a></li>
						<li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Amazing Pool</a></li>
						<li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">Special smoking zones</a></li>
						<li><span class="glyphicon glyphicon-share-alt" aria-hidden="true"></span><a href="#">24 Hour Front-Desk</a></li>
					</ul>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!--end-vision-->
	<!--start-teacher-->
	<div class="staff">
		<div class="container">
			<h3 class="tittle">OUR TEAM</h3>
			<ul class="ch-grid">
					<li>
						<div class="ch-item ch-img-1">				
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-1"></div>
									<div class="ch-info-back">
										<h4>Angkon Biswas</h4>
										<p>Creator</p>
									</div>	
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item ch-img-2">
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-2"></div>
									<div class="ch-info-back">
										<h4>Sumit Pal</h4>
										<p>Creator</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item ch-img-3">
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-3"></div>
									<div class="ch-info-back">
										<h4>Angkon</h4>
										<p>Owner and CEO</p>
									</div>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item ch-img-4">
							<div class="ch-info-wrap">
								<div class="ch-info">
									<div class="ch-info-front ch-img-4"></div>
									<div class="ch-info-back">
										<h4>Sumit Pal</h4>
										<p>Co-owner and Director</p>
									</div>
								</div>
							</div>
						</div>
					</li>
			</ul>
		</div>
	</div>
<!--//about-->
<!--footer-->
<div class="footer">
		<div class="container">				 	
			<div class="col-md-3 ftr_navi ftr">
				<h3>NAVIGATION</h3>
				<ul>
					<li><a href="#">Double bedrooms</a></li>
						 <li><a href="#">Single bedrooms</a></li>
						 <li><a href="#">Royal facilities</a></li>						
						 <li><a href="#">Connected rooms</a></li>
				</ul>
			</div>
			<div class="col-md-3 ftr_navi ftr">
					 <h3>FACILITIES</h3>
					 <ul>
						 <li><a href="#">Double bedrooms</a></li>
						 <li><a href="#">Single bedrooms</a></li>
						 <li><a href="#">Royal facilities</a></li>						
						 <li><a href="#">Connected rooms</a></li>
					 </ul>
			</div>
			<div class="col-md-3 ftr_navi ftr">
				<h3>GET IN TOUCH</h3>
				<ul>
					<li>Hunspoint Drive</li>
					<li>Brampton</li>
					<li>Canada</li>
				</ul>
			</div>
			<div class="col-md-3 ftr-logo">
				<a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a>
				<ul>
					<li><a href="#" class="f1"> </a></li>
					<li><a href="#" class="f2"> </a></li>
					<li><a href="#" class="f3"> </a></li>
				</ul>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
<!--footer-->
<!-- copy -->
<div class="copy-right">
	<div class="container">
			<p> &copy; 2021 Hotel Project. All Rights Reserved by Angkon Biswas & Sumit Pal</p>
	</div>
</div>
<!-- //copy -->
<!-- for bootstrap working -->
	<script src="js/bootstrap.js"></script>
<!-- //for bootstrap working -->
<!-- smooth scrolling -->
	<script type="text/javascript">
	    $(document).ready(function () {
	        /*
	        var defaults = {
	        containerID: 'toTop', // fading element id
	        containerHoverID: 'toTopHover', // fading element hover id
	        scrollSpeed: 1200,
	        easingType: 'linear' 
	        };
	        */
	        $().UItoTop({ easingType: 'easeOutQuart' });
	    });
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //smooth scrolling -->
</body>
</html>
