	<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
   
<title>Hotel Project a Hotel Category Flat Bootstrap Responsive Website Template | Home :: w3layouts</title>
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
    .banner-bottom {background-color:rgba(200,200,150,0.8);}
    .banner-info{margin-top:100px;}
    .txtPassword
    {
    display: block;
    border: 1px solid #E5E5E5;
    width: 100%;
    outline: none;
    padding: 8px 8px;
    font-size: 14px;
    color: #000;
    margin-bottom: 20px;
}
.navigation{width:70% !important;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
 <!-- banner -->
<div class="banner">
	<div class="container">
		<div class="header-nav">
			<div class="logo">
				<h1><a href="Admin_Login.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a></h1>
			</div>
			<div class="navigation">
				<span class="menu"><img src="images/menu.png" alt=""/></span>
				
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
		</div>
		<div class="banner-bottom col-md-6 col-md-offset-3">
			<div class="col-md-12 reservation-right">
            
				<div>
                        <h4>Username</h4>
                        <asp:TextBox ID="txtUsername" required=""   PlaceHolder="Username" 
                            runat="server" Font-Bold="True" Font-Size="Medium"></asp:TextBox>
				</div>
                <h4>Password</h4>
                <div>
                        
                        
                        <asp:TextBox ID="txtPassword" CssClass="txtPassword" required=""   PlaceHolder="Password" 
                            runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Password" ></asp:TextBox>
				</div>

                <asp:Label ID="lblError" runat="server" Visible="False" 
                    CssClass="label label-danger" Font-Size="Medium"></asp:Label>
				<div  class="search col-md-2 col-md-offset-9">
                    <asp:Button ID="btnLogin"  runat="server" Text="Login" 
                        onclick="btnLogin_Click" Font-Bold="True"   />
				</div>
                
               
                </div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
</div>
<!-- //banner -->
<!-- banner-pos -->

<!-- //banner-pos -->
<!-- welcome -->

<!-- //welcome -->
<!-- facilities -->

<!-- //facilities -->

<!-- gallery -->

<!-- //gallery -->
<!--footer-->
	
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
