<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_AddHotel.aspx.cs" Inherits="Admin_AddHotel" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
<link rel="stylesheet" href="css/jquery-ui.css" />
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
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">

    <style>
    .search{float:left !important;}
    .navigation{width:70% !important;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <!-- banner -->
<div class="banner page-head">
	<div class="container">
		<div class="header-nav">
			<div class="logo">
				<h1><a href="Admin_Home.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a></h1>
			</div>
			<div class="navigation">
				<span class="menu"><img src="images/menu.png" alt=""/></span>
				<nav class="cl-effect-11" id="cl-effect-11">
					<ul class="nav1">
						<li><a href="Admin_Home.aspx" >HOME</a></li>
						<li><a href="Admin_Staff.aspx" >STAFF</a></li>
						<li><a href="Admin_AllHotels.aspx" >ALL HOTELS</a></li>
						<li><a href="Admin_AddHotel.aspx" >ADD HOTEL</a></li>
						<li><a href="Admin_AddCity.aspx">ADD CITY</a></li>
                        <li><a href="Admin_Bookings.aspx">BOOKINGS</a></li>
                        <li><a href="Default.aspx" >LOG OUT</a></li>

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
			
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!-- //banner -->
<!--about-->
<div class="booking">
	<div class="container">
		<h2 class="tittle-one">ADD NEW HOTEL</h2>
			<div class="reservation-form">
				
				<div class="col-md-8 col-md-offset-2 reservation-right">
					<div class="book-pag">
                    
                    <div>
                    
						<h4>Hotel Name</h4>
                     <asp:TextBox ID="txtName" required=""    PlaceHolder="Name of The Hotel" runat="server"></asp:TextBox>
                        </div>
						<div class="col-md-6">
						<h4>Phone Number</h4>
						<asp:TextBox ID="txtPhone" required=""     PlaceHolder="Phone Number" runat="server"></asp:TextBox>
					    </div>	
                        <div class="col-md-6">
						<h4>Email Address</h4>
						<asp:TextBox ID="txtEmail" required=""  PlaceHolder="Email Address" runat="server"></asp:TextBox>
					    </div>
                        <div>	
						<h4>Address 1</h4>
                        <asp:TextBox ID="txtAddress1" required=""   PlaceHolder="Address 1" runat="server"></asp:TextBox>
					    </div>
                        <div>
                        <h4>Address 2</h4>
                        <asp:TextBox ID="txtAddress2" required=""   PlaceHolder="Address 2" runat="server"></asp:TextBox>
					    </div>
                        
                         
                         <h4>Country</h4>
						<div class="dropdown-button"> 
                            <asp:DropDownList ID="ddlCountry" CssClass="dropdown" 
                                data-settings='{"wrapperClass":"flat"}' runat="server" 
                                >
                            <asp:ListItem Text="Canada" Selected="True" ></asp:ListItem>
                            </asp:DropDownList>          			
			            	
						</div>	

						<h4>State</h4>
						<div class="dropdown-button"> 
                            <asp:DropDownList ID="ddlState" CssClass="dropdown" AutoPostBack="true" data-settings='{"wrapperClass":"flat"}' runat="server" onselectedindexchanged="ddlState_SelectedIndexChanged">
                           
                            </asp:DropDownList>          			
			            	
                       
						</div>
                        
                        
                        <h4>City</h4>
                        <div class="dropdown-button">
                            <asp:DropDownList ID="ddlCity" CssClass="dropdown" data-settings='{"wrapperClass":"flat"}' runat="server">
                            </asp:DropDownList>
                         </div>
                        
                        <div>
                        <h4>Stars</h4>
                       
                        <div class="dropdown-button"> 
                            <asp:DropDownList ID="ddlStar" CssClass="dropdown" data-settings='{"wrapperClass":"flat"}' runat="server">
                            <asp:ListItem Text="1" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="2" Selected="False" ></asp:ListItem>
                            <asp:ListItem Text="3" Selected="False" ></asp:ListItem>
                            <asp:ListItem Text="4" Selected="False" ></asp:ListItem>
                            <asp:ListItem Text="5" Selected="False" ></asp:ListItem>
                            
                            </asp:DropDownList>          			
			            	
						</div></div>
                        
                        <div>
                        <h4>Description</h4>
                        <asp:TextBox ID="txtDescription" required="" TextMode="MultiLine"  PlaceHolder="Descrription" runat="server"></asp:TextBox>
					    </div>
                        <div>
                        <h4> Photo</h4>
                        <asp:FileUpload ID="img" CssClass="btn btn-default btn-file" runat="server" />
                        </div>
                        <div>
                        <h4>Minimum Price</h4>
                        <asp:TextBox ID="txtPrice" required=""   PlaceHolder="Minimum Price" runat="server"></asp:TextBox>
					    </div>
                        <div>
                        <h4>Distance From Air Port</h4>
                        <asp:TextBox ID="txtAirport" required=""   PlaceHolder="Distance From Air Port" runat="server"></asp:TextBox>
					    </div>
                        <div>
                        <h4>Distance From Railway Station</h4>
                        <asp:TextBox ID="txtRailStation" required=""   PlaceHolder="Distance From Railway Station" runat="server"></asp:TextBox>
					    </div>
                        <div>
                        <h4>Landmark</h4>
                        <asp:TextBox ID="txtLandMark" required=""   PlaceHolder="Landmark" runat="server"></asp:TextBox>
					    </div>

						</div>	
                        <div class="clearfix">
						</div>
                      
						
                        <div class="search">
                    
                        <asp:Button  ID="btnAddHotel" runat="server" Text="ADD HOTEL" 
                                onclick="btnAddHotel_Click"  />
						</div>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
					
					
				</div>
				<div class="clearfix"></div>
			</div>


	</div>
</div>
<!--//about-->
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
    </div>
    </form>
</body>
</html>

