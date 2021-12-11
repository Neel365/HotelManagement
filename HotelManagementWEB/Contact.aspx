<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="ContactUs" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html>
<head>
<title>Hotel Project a Hotel Category Flat Bootstrap Responsive Website Template | Contact :: w3layouts</title>
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
<form runat="server">
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
						<li><a  href="CancelBooking.aspx" data-hover="BOOKING">BOOKING</a></li>
						<li><a class="active" href="Contact.aspx" data-hover="CONTACT">CONTACT</a></li>
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
<!--contact-->
<div class="contact">
	<div class="container">
		<h2 class="tittle-one">Contact Us</h2>
		
		<div class="paragraph">
			<p>My name is Angkon Biswas and I'm the owner of Hotel Project. I'm a person with a passion for Hotel Services.

I started Hotel Project with the idea of being able to offer the very best Hotel to help Travellers

If you are like me then you Have trouble coming up with ideas, want the best prices, avail our services

If so, I've got your back!

I am committed to offer you:-

Premiun Services
Best Price

If you need anything don't hesitate to contact me!
<br>All the best,</br>
<br>Angkon Biswas Mail me at:-angkonbiswas1993@gmail.com,</br>
<br>Sumit Pal Mail me at:-asr.sumitpal92@gmail.com</br></p>
		</div>
		<div class="contact-form">
			<h3 class="tittle">CONTACT FORM</h3>
			<div>
                <asp:TextBox ID="txtName" placeholder="Name"  runat="server"></asp:TextBox>
                <asp:TextBox ID="txtEmail" placeholder="Email"  runat="server"></asp:TextBox>
                <asp:TextBox ID="txtSubject" placeholder="Subject"  runat="server"></asp:TextBox>
                <asp:TextBox ID="txtMessage" placeholder="Message" TextMode="MultiLine" runat="server"></asp:TextBox>
				
				<div class="clearfix"> </div>
                <asp:Button ID="Button1" runat="server" Text="SEND" onclick="Button1_Click" />
			</div>
		</div>
	</div>
</div>

<!--//contact-->
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
</form>
</body>
</html>
