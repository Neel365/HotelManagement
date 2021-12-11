<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Booking.aspx.cs" Inherits="Booking" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Hotel Project</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1"/>
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
<!-- //js --><link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
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
    .search{float:left;}
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
				<h1><a href="Default.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a></h1>
			</div>
			<div class="navigation">
				<span class="menu"><img src="images/menu.png" alt=""/></span>
				<nav class="cl-effect-11" id="cl-effect-11">
					<ul class="nav1">
						<li><a href="Default.aspx" data-hover="HOME">HOME</a></li>
						<li><a href="About.aspx" data-hover="ABOUT">ABOUT</a></li>
						<li><a class="active" href="CancelBooking.aspx" data-hover="BOOKING">BOOKING</a></li>
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
<div class="booking">
	<div class="container">
		<h2 class="tittle-one">BOOKING</h2>
			<div class="reservation-form">
				
				<div class="col-md-8 col-md-offset-2 reservation-right">
                
                <div  class="dropdown-button ">
					<h4>Room Type</h4>
                   <asp:DropDownList ID="ddlRoomType" CssClass="dropdown" AutoPostBack="true" 
                        runat="server" onselectedindexchanged="ddlRoomType_SelectedIndexChanged">
                    </asp:DropDownList>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Required" ControlToValidate="ddlRoomType" ValidationGroup="book" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                    </div>
                  
                    <div style="margin-bottom:20px !important;">
                  <asp:Label ID="Label2" Visible="false" runat="server"  Font-Size="Larger" ForeColor="#CC0000">  <i class="fa fa-inr"></i></asp:Label>
                    <asp:Label ID="lblPrice" Visible="false" runat="server" Text="" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                    <asp:Label ID="Label1" runat="server" Visible="false" Text="&nbsp Per Room" Font-Size="Large" ForeColor="#CC0000"></asp:Label>
                    </div>
                    <h4>How many members?</h4>
                   
                    <asp:TextBox ID="txtMembers" required="true"  PlaceHolder="Number of Members"  runat="server" AutoPostBack="true" ontextchanged="txtMembers_TextChanged" ></asp:TextBox>
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Required" ControlToValidate="txtMembers" ValidationGroup="book" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                       <asp:Label ID="lblinfo" runat="server" Font-Size="Large" class="label label-info" Visible="false" ></asp:Label>
						<br />	<br />
                    <h4>How Many Rooms?</h4>
                    
						<asp:TextBox ID="txtRooms" required="true"   
                      PlaceHolder="Number of Rooms" runat="server" AutoPostBack="true"  ontextchanged="txtRooms_TextChanged"></asp:TextBox>
					<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Required" ControlToValidate="txtRooms" ValidationGroup="book" Display="Dynamic"></asp:RequiredFieldValidator>
                    
                    <asp:Label ID="lblError" runat="server" Font-Size="Large" class="label label-danger" Visible="false" ></asp:Label>
						<br />	<br />
						<h4>When would you like to come?</h4>
						<div class="book-pag">
							
							<div class="book-pag-frm col-md-6">
								<label>Check In :</label>
							
							   <asp:TextBox class="date" id="txtCheckIn" type="text" AutoPostBack="true"  
                        
                                    required="true" runat="server" ontextchanged="txtCheckIn_TextChanged" ></asp:TextBox>
                        	</div>
							<div class="book-pag-frm col-md-6">
								<label>Check Out:</label>
                                   <asp:TextBox class="date" id="txtCheckOut" type="text"  required="true" runat="server" AutoPostBack="true" 
                                    ontextchanged="txtCheckOut_TextChanged"></asp:TextBox>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="" ControlToValidate="txtCheckOut" Display="Dynamic"></asp:RegularExpressionValidator>
								
                       	</div>
							<div class="clearfix"></div>
						</div>	
						
						<h4>Contact details</h4>
                        <asp:TextBox  id="txtName" type="text" PlaceHolder="Enter Your Name"   required="true" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Required" ControlToValidate="txtName" ValidationGroup="book" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:TextBox  id="txtEmail" type="text" PlaceHolder="Enter Your Email Address"  required="true" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Required" ControlToValidate="txtEmail" ValidationGroup="book" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:TextBox  id="txtPhone" type="text" PlaceHolder="Enter Your Contact Number"  required="true" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="txtMessage" ControlToValidate="txtPhone" ValidationGroup="book" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:TextBox  id="txtMessage" type="text" PlaceHolder="Message..." TextMode="MultiLine"   required="true" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Required" ControlToValidate="txtMessage" ValidationGroup="book" Display="Dynamic"></asp:RequiredFieldValidator>
                        
                    <div class="search">
                    <asp:Button ID="btnBook" runat="server" Text="RESERVE NOW" ValidationGroup="book" onclick="btnBook_Click" />
                     </div>

                     <div class="search col-md-offset-1">
                    <asp:Button ID="btnBack" runat="server" Text="Back" onclick="btnBack_Click"  />
                     </div>
                    <asp:Label ID="lblmsg" runat="server" Visible="false" Text=""></asp:Label>
					
					<!--strat-date-piker-->
					
					<script src="js/jquery-ui.js"></script>
							  <script>
							      $(function () {
							          $('.date').datepicker({changeYear:true,showButtonPanel:true,dateFormat:'dd/M/yy',yearRange:'2021:3000'});
							      });
							  </script>
					<!--//End-date-piker-->
				</div>
				<div class="clearfix"></div>
			</div>
	</div>
</div>
<!--//about-->
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
				<a href="Default.aspx.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>Hotel Project</a>
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
