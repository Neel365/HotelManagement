<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Single.aspx.cs" Inherits="Single" MaintainScrollPositionOnPostback="true"%>

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
<link rel="stylesheet" href="css/flexslider.css" media="screen" />
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
        <style>
        .spl-btn{padding-bottom:30px !important;}
        .search{padding:10px 20px;}
        </style>
	<!-- start-smoth-scrolling -->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- banner -->
<div class="banner page-head">
	<div class="container">
		<div class="header-nav">
			<div class="logo">
				<h1><a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a></h1>
			</div>
			<div class="navigation">
				<span class="menu"><img src="images/menu.png" alt=""/></span>
				<nav class="cl-effect-11" id="cl-effect-11">
					<ul class="nav1">
						<li><a href="Default.aspx" data-hover="HOME">HOME</a></li>
						<li><a href="About.aspx" data-hover="ABOUT">ABOUT</a></li>
						<li><a href="CancelBooking.aspx" data-hover="BOOKING">BOOKING</a></li>
						<li><a href="Contact.aspx" data-hover="CONTACT">CONTACT</a></li>
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

    <asp:GridView ID="GridView1" AutoGenerateColumns="false" DataKey="HotelId" GridLines="None" runat="server" onrowupdating="GridView1_RowUpdating">
    <Columns>
    <asp:TemplateField>
    <ItemTemplate>
    
<div class="container">
		<div class="col-md-8">
			<div class="single-pg-hdr">
                

				<h2><span class="glyphicon glyphicon-bed" aria-hidden="true"></span><%# Eval("HotelName") %></h2>
				<p><%# Eval("Address") %></p>
				</div>





			<div class="flexslider">



							<ul class="slides">
								<li data-thumb="images/bbb.jpg">
									<img src="images/bbb.jpg" alt=""/>
								</li>
								<li data-thumb="images/ccc.jpg">
									<img src="images/ccc.jpg" alt=""/>
								</li>
								<li data-thumb="images/ddd.jpg">
									<img src="images/ddd.jpg" alt=""/>
								</li>
								<li data-thumb="images/eee.jpg">
									<img src="images/eee.jpg" alt=""/>
								</li>
								<li data-thumb="images/ggg.jpg">
									<img src="images/ggg.jpg" alt=""/>
								</li>
								<li data-thumb="images/bbb.jpg">
									<img src="images/bbb.jpg" alt=""/>
								</li>
								<li data-thumb="images/ccc.jpg">
									<img src="images/ccc.jpg" alt=""/>
								</li>
								<li data-thumb="images/ddd.jpg">
									<img src="images/ddd.jpg" alt=""/>
								</li>
								<li data-thumb="images/eee.jpg">
									<img src="images/eee.jpg" alt=""/>
								</li>
								<li data-thumb="images/ggg.jpg">
									<img src="images/ggg.jpg" alt=""/>
								</li>
								<li data-thumb="images/bbb.jpg">
									<img src="images/bbb.jpg" alt=""/>
								</li>
								<li data-thumb="images/ccc.jpg">
									<img src="images/ccc.jpg" alt=""/>
								</li>
								<li data-thumb="images/ddd.jpg">
									<img src="images/ddd.jpg" alt=""/>
								</li>
								<li data-thumb="images/eee.jpg">
									<img src="images/eee.jpg" alt=""/>
								</li>
								<li data-thumb="images/ggg.jpg">
									<img src="images/ggg.jpg" alt=""/>
								</li>
								<li data-thumb="images/ccc.jpg">
									<img src="images/ccc.jpg" alt=""/>
								</li>
								<li data-thumb="images/ddd.jpg">
									<img src="images/ddd.jpg" alt=""/>
								</li>
								<li data-thumb="images/bbb.jpg">
									<img src="images/bbb.jpg" alt=""/>
								</li>
								<li data-thumb="images/ccc.jpg">
									<img src="images/ccc.jpg" alt=""/>
								</li>
							</ul>
			</div>
						<!-- FlexSlider -->
					<script defer src="js/jquery.flexslider.js"></script>
						<script>
						    // Can also be used with $(document).ready()
						    $(window).load(function () {
						        $('.flexslider').flexslider({
						            animation: "slide",
						            controlNav: "thumbnails"
						        });
						    });
						</script>

		</div>
		<div class="col-md-4 ">
			<div class="spl-btn">
				<div class="spl-btn-bor">
					
						<span class="glyphicon glyphicon-tag" aria-hidden="true"></span>
																	
					
					<p>Special Offer</p>	
					<script>
					    $(document).ready(function () {
					        $('[data-toggle="tooltip"]').tooltip();
					    });
					</script>
				</div>
				<div class="sp-bor-btn text-right">
					<h4>&#8377; <%# Eval("Price") %></h4>
					<p class="best-pri">Best price</p>
					<div class="search">
                    <asp:LinkButton ID="btnBook" BackColor="#CC0000"   runat="server" Text="Book Now" CommandName="Update" class="search" Font-Bold="True" ForeColor="#FFFFCC" />
                    </div>
                    <br />
				</div>
			</div>
			<div class="map-gd single-pg-hdr">
				<h2>Contact Details</h2>
                <br />
                
                <h5>Email Address : <%# Eval("Email") %></h5>
                <br />
                <h5>Phone Number : <%# Eval("Phone") %></h5>


            </div>
            <div class="map-gd single-pg-hdr">
				<h2>Address Details</h2>
                <br />
                
                <h5>Address : <%# Eval("Address") %></h5>
                <br />
                <h5>City : <%# Eval("CityName") %></h5>
                <br />
                <h5>State : <%# Eval("StateName") %></h5>
            </div>
            <div class="map-gd single-pg-hdr">
				<h2>Desription</h2>
                <br />
                
                <h5> <%# Eval("Description")%></h5>


            </div>
			
		</div>
		<div class="clearfix"></div>
	</div>

    </ItemTemplate>
    </asp:TemplateField>
    </Columns>
    </asp:GridView>
	

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
    </div>
    </form>
</body>
</html>
