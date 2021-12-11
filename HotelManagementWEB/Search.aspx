<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" MaintainScrollPositionOnPostback="true"%>

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
<link rel="stylesheet" type="text/css" href="css/jquery-ui1.css">
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
    .search-page {padding:20px;}
    .search-grid-left {margin-top:20px;}
    .search{padding:10px 20px !important;
            background-color:#CC0000;}
   
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
				<!-- script for menu --
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
<!--search-->
<div class="search-page">
	<div class="container">	
		<div class="search-grids">
			<div class="col-md-3 search-grid-left">
				<div class="search-hotel">
					<h3 class="sear-head">Name contains</h3>
                    <asp:TextBox ID="txtName" PlaceHolder="Hotel Name" Font-Bold="true" runat="server"></asp:TextBox>
                    <br /> <br />
                  <asp:Button runat="server" ID="btnNameSearch" CssClass="Search" Text="Search" 
                        onclick="btnNameSearch_Click"/>
				</div>
				
				<div class="range">
					<h3 class="sear-head">Average nightly rate</h3>
							<ul class="dropdown-menu6">
								<li>
									                
									<div id="slider-range"></div>	
                                    <br />
                                  &nbsp;&#8377; <asp:TextBox ID="txtMinPrice" style=" font-weight: normal; width:50px" runat="server" ></asp:TextBox>
									 &nbsp;to &nbsp; &#8377; <asp:TextBox ID="txtMaxPrice" style="  font-weight: normal; width:50px" runat="server"></asp:TextBox>
									   <br /><br /><div> <asp:Button runat="server" ID="btnPriceSearch"  
                                        Text="Search" onclick="btnPriceSearch_Click"/></div></li>			
							</ul>
							<!---->
							<script type='text/javascript'>//<![CDATA[
							    $(window).load(function () {
							        $("#slider-range").slider({
							            range: true,
							            min: 500,
							            max: 10000,
							            values: [1000, 5000],
							            slide: function (event, ui) {
							                $("#txtMinPrice").val( ui.values[0] );
							                $("#txtMaxPrice").val( ui.values[1]);
							            }
							        });
							        $("#txtMinPrice").val( $("#slider-range").slider("values", 0)); 
                                    
                                    $("#txtMaxPrice").val( $("#slider-range").slider("values", 1)); 
                                    

							    });//]]>  

							</script>
							
				</div>
				<div class="range-two">
					<h3 class="sear-head">Distance from</h3>
						<asp:DropDownList runat="server" ID="ddlDistance" CssClass="sel">
							<asp:ListItem value="Air">Air Port</asp:ListItem>
							<asp:ListItem value="Railway">Railway Station</asp:ListItem>
						</asp:DropDownList>

							<ul class="dropdown-menu5">
								<li>
									               
									<div id="slider-range1"></div>							
										  <br />
                                  &nbsp;<asp:TextBox ID="txtMinkm" style=" font-weight: normal;margin-left:3px; width:50px" runat="server" ></asp:TextBox>KM&nbsp;
									to &nbsp;<asp:TextBox ID="txtMaxkm" style="  font-weight: normal; width:50px" runat="server"></asp:TextBox>KM
									    <br /><br /><asp:Button runat="server"  ID="btnDstSearch" CssClass="Search" Text="Search" onclick="btnDstSearch_Click"/>	</li>			
							</ul>
							<!---->
							<script type="text/javascript" src="js/jquery-ui.js"></script>
							
							<script type='text/javascript'>//<![CDATA[
							    $(window).load(function () {
							        $("#slider-range1").slider({
							            range: true,
							            min: 0,
							            max: 500,
							            values: [10, 50],
							            slide: function (event, ui) {
							                $("#txtMinkm").val(ui.values[0]);
							                $("#txtMaxkm").val(ui.values[1]);
							            }
							        });
							        $("#txtMinkm").val($("#slider-range").slider("values", 0));

							        $("#txtMaxkm").val($("#slider-range").slider("values", 1)); 
                                    
							    });//]]>  

							</script>
				</div>
				
				
				<div class="menu-grid">
					
					<!-- script for tabs -->
						<script type="text/javascript">
						    $(function () {

						        var menu_ul = $('.menu_drop > li > ul'),
									   menu_a = $('.menu_drop > li > a');

						        menu_ul.hide();

						        menu_a.click(function (e) {
						            e.preventDefault();
						            if (!$(this).hasClass('active')) {
						                menu_a.removeClass('active');
						                menu_ul.filter(':visible').slideUp('normal');
						                $(this).addClass('active').next().stop(true, true).slideDown('normal');
						            } else {
						                $(this).removeClass('active');
						                $(this).next().stop(true, true).slideUp('normal');
						            }
						        });

						    });
						</script>
					<!-- script for tabs -->

				</div>
			</div>

            
            <div class="col-md-9">
               
                <asp:GridView ID="GridView1" runat="server" DataKey="HotelId" AutoGenerateColumns="false" GridLines="None" onrowupdating="GridView1_RowUpdating">
               <Columns>
               <asp:TemplateField>
               <ItemTemplate>
                
               <div class="col-md-12 search-grid-right">
				<div class="hotel-rooms">
					<div class="hotel-left">
						<asp:LinkButton  CommandName="Update" runat="server" ID="lnkHotelId">
                        <span class="glyphicon glyphicon-bed" aria-hidden="true"></span><%# Eval("HotelName") %></asp:LinkButton>
						<p><%# Eval("Address") %></p>
						<div class="hotel-left-grids">
							<div class="hotel-left-one">
								<asp:Image ImageUrl='<%# Eval("Path") %>' alt=""  runat="server"/>
							</div>
							<div class="hotel-left-two">
								<div class="text-left">
                                <span>Type : </span>
									<span><%# Eval("Star") %></span>
									
									<span> Star</span>
									
								</div>
								<span class="glyphicon glyphicon-map-marker" aria-hidden="true" ></span><%# Eval("LandMark") %>
								<p><%# Eval("AirPort") %> km to AirPort <span> <%# Eval("RailwayStation") %> km to Railway Station</span></p>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
                    <div class="sp-btn">
                    <div class="spl-bor-btn">
					<div class="sp-bor-btn text-right">
                    <br />
						<h4> &#8377; &nbsp;<%# Eval("Price") %>/-</h4>
                        <br />
						<p>Minimum price</p>
                        <br />
                        <div class="search">
                    <asp:LinkButton ID="btnContinue" runat="server"  CommandName="Update" Text="Continue"  Font-Bold="True" ForeColor="White" />
						
				</div>
						<%--<a href="single.html">Continue</a>--%>
					</div>
                    </div>
                    </div>
					<div class="clearfix"></div>
				</div>
				<asp:Label ID="lblHotelId" Visible="false" runat="server" Text=<%# Eval("HotelId") %>></asp:Label>
			</div>
               </ItemTemplate>
               </asp:TemplateField>
               </Columns>
               
                </asp:GridView>
            
            </div>
			
			<div class="clearfix"></div>
		</div>
	</div>
</div>
<!--//search-->
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
