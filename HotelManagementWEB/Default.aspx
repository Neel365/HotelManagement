<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" MaintainScrollPositionOnPostback="true" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   
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
<link href="css/chocolat.css" rel="stylesheet">
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
    <style>
    .search{float:left !important;}
    .banner-info{margin-top:80px;}
    .callbacks_container{margin-top:80px;}
    .droop {width: 35% !important;}
    .banner-bottom {background-color:rgba(200,200,150,0.8);}
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <!-- banner -->
<div class="banner">
	<div class="container">
		<div class="header-nav">
			<div class="logo">
				<h1><a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a></h1>
			</div>
			<div class="navigation">
				<span class="menu"><img src="images/menu.png" alt=""/></span>
				<nav class="cl-effect-11" id="cl-effect-11">
					<ul class="nav1">
						<li><a class="active" href="Default.aspx"  data-hover="HOME">HOME</a></li>
						<li><a href="About.aspx" data-hover="ABOUT">ABOUT</a></li>
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
		<div class="banner-info">
			<script src="js/responsiveslides.min.js"></script>
			<script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			        // Slideshow 4
			        $("#slider3").responsiveSlides({
			            auto: true,
			            pager: false,
			            nav: false,
			            speed: 500,
			            namespace: "callbacks",
			            before: function () {
			                $('.events').append("<li>before event fired.</li>");
			            },
			            after: function () {
			                $('.events').append("<li>after event fired.</li>");
			            }
			        });
			    });
			</script>
            <div class="banner-bottom">
			<div class="droop-down ">
            
            <div class="droop col-md-3 col-md-offset-1">
					<div class="sort-by">
                        <asp:DropDownList ID="ddlState" CssClass="sel" runat="server" AutoPostBack="true"
                            onselectedindexchanged="ddlState_SelectedIndexChanged">
                      

                        </asp:DropDownList>
						
					</div>
				</div>

				<div class="droop col-md-3">
					<div class="sort-by">
                        <asp:DropDownList ID="ddlCity" CssClass="sel" runat="server">
                        

                        </asp:DropDownList>
						
					</div>
				</div>
				
				<div class="search col-md-2 ">
                    <asp:Button ID="btnSearch" runat="server" Text="Search" 
                        onclick="btnSearch_Click" />
				</div>
               
                </div>
				<div class="clearfix"></div>
			</div>
			<div  id="top" class="callbacks_container">
				<ul class="rslides" id="slider3">
					<li>
						<div class="banner-text">
							<h3>WELCOME</h3>
							<h4>EXCELLENT SERVICES WITH BEST PRICE</h4>
						</div>
					</li>
					<li>
						<div class="banner-text">
							<h3>WELCOME</h3>
							<h4>RELAX AND EXPERIENCE SOMETHING NEW</h4>
						</div>
					</li>
					<li>
						<div class="banner-text">
							<h3>WELCOME</h3>
							<h4>FIND YOUR IDEAL HOTEL ON HOTEL PROJECT</h4>
						</div>
					</li>
				</ul>
			</div>
		</div>
		
		</div>
	</div>
</div>
<!-- //banner -->
<!-- banner-pos -->
<div class="banner-pos">
	<div class="container">
		<div class="banner-pos-grids">
			<div class="ban-pos-gridone">
				<h3>Featured Hotel</h3>
				<div class="ban-pos-info l-grids">
					<figure class="effect-bubba">
							<img src="images/4.jpg" alt=""/>
							<figcaption>
								<h4>Hotel Project</h4>
								<p>Get the best deals available with out Featured Hotel deals</p>																
							</figcaption>			
					</figure>
				</div>
			</div>
			<div class="ban-pos-gridtwo l-grids">
				<div class="ban-pos-info l-grids">
					<figure class="effect-bubba">
							<img src="images/6.jpg" alt=""/>
							<figcaption>
								<h4>Hotel Project</h4>
								<p>Enjoy magnificant views and Hospitality with us</p>														
							</figcaption>			
					</figure>
				</div>
			</div>
			<div class="ban-pos-gridthree l-grids">
				<div class="ban-pos-info l-grids">
					<figure class="effect-bubba">
							<img src="images/5.jpg" alt=""/>
							<figcaption>
								<h4>Hotel Project</h4>
								<p>Enjoy magnificant views and Hospitality with us</p>																
							</figcaption>			
					</figure>
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //banner-pos -->
<!-- welcome -->
<div class="welcome">
	<div class="container">
		<h2 class="tittle-one">WELCOME</h2>
		<div class="welcome-grids">
			<div class="col-md-4 welcome-left">
				<ul>
					<li><a href="#">Free Wi-fi Services at all our Hotels</a></li>
					<li><a href="#">There are many variations of passages.</a></li>
					<li><a href="#">The standard and Quality is unmatched</a></li>
				</ul>
			</div>
			<div class="col-md-4 welcome-middle">
				<ul>
					<li><a href="#">Free Wi-fi Services at all our Hotels</a></li>
					<li><a href="#">There are many variations of passages.</a></li>
					<li><a href="#">The standard and Quality is unmatched</a></li>
				</ul>
			</div>
			<div class="col-md-4 welcome-right">
				<ul>
					<li><a href="#">Free Wi-fi Services at all our Hotels</a></li>
					<li><a href="#">There are many variations of passages.</a></li>
					<li><a href="#">The standard and Quality is unmatched</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<p>We offfer Hotels with brilliant views with pool facilities, Free parking, Pet Firendly Hotels and lots of other anemities.</p>
	</div>
</div>
<!-- //welcome -->
<!-- facilities -->
<div class="facilities">
	<div class="container">
		<h3 class="tittle">FACILITIES</h3>
		<div class="facilities-grids">
			<div class="col-md-6 facilities-grid">
				<img src="images/222.jpg" alt="" />
			</div>
			<div class="col-md-6 facilities-grid-left">
				<div class="fac-grids">
					<div class="facilities-left">
						<img src="images/111.jpg" alt="" />
					</div>
					<div class="facilities-right">
						<img src="images/333.jpg" alt="" />
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="fac-rig-btm">
					<img src="images/444.jpg" alt="" />
				</div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //facilities -->

<!-- gallery -->
<div class="gallery" id="gallery">
	<div class="container">
		<h3 class="tittle">GALLERY</h3>
			<div class="gallery-bottom">
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
							<a href="images/aaa.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/aaa.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
						   <a href="images/bbb.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/bbb.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
							<a href="images/ccc.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/ccc.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
						   <a href="images/ddd.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/ddd.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 gal-grid">
						 <div class="view view-fifth">
							<a href="images/eee.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/eee.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
							<a href="images/bbb.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/bbb.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
							<a href="images/ggg.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/ggg.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
							<a href="images/bbb.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/bbb.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="col-md-4 gal-grid">
						<div class="view view-fifth">
						   <a href="images/aaa.jpg" class="b-link-stripe b-animate-go  thickbox"  title="Image Title"><img src="images/aaa.jpg" alt="" class="img-responsive">
								<div class="mask">
									<h4>Hotel Project</h4>
									<p>A wonderful serenity has taken possession of my entire soul.</p>
									<span>More</span>
								</div>
							</a>
						</div>
					</div>
					<div class="clearfix"> </div>
			</div>
				<script src="js/jquery.chocolat.js"></script>
			
			<!--light-box-files -->
			<script type="text/javascript">
			    $(function () {
			        $('.gallery a').Chocolat();
			    });
			</script>

	</div>
</div>
<!-- //gallery -->
<!--footer-->
	<div class="footer">
		<div class="container">				 	
			<div class="col-md-3 ftr_navi ftr">
				<h3>NAVIGATION</h3>
				<ul>
					<li><a href="Default.aspx">Home</a></li>
					<li><a href="About.aspx">About</a></li>					
					<li><a href="CancelBooking.aspx">Booking</a></li>
					<li><a href="Contact.aspx">Contact</a></li>
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

<div class="copy-right">
	<div class="container">
			<p> &copy; 2021 Hotel Project All Rights Reserved</p>
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
    </form>
</body>
</html>
