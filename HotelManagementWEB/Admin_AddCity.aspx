<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_AddCity.aspx.cs" Inherits="Admin_AddCity" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
        .booking{padding:10px !important;}
        h2.tittle-one {margin-bottom:10px !important;}
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
		<h2 class="tittle-one">ADD NEW CITY</h2>
			<div class="reservation-form">
				
				<div class="col-md-8 col-md-offset-2 reservation-right">
					<div class="book-pag">
                    
                         
						<div class="dropdown-button"> <h4>Country</h4>
                            <asp:DropDownList ID="ddlCountry" CssClass="dropdown"  data-settings='{"wrapperClass":"flat"}' runat="server" >
                            <asp:ListItem Text="India" Selected="True" ></asp:ListItem>
                            </asp:DropDownList>          			
			            	
						</div>	
                        <div class="dropdown-button">
						<h4>State</h4>
						    <asp:DropDownList ID="ddlState" CssClass="dropdown" AutoPostBack="true" data-settings='{"wrapperClass":"flat"}' runat="server">
                   </asp:DropDownList>          			
			            <div>
                        <h4>City Name</h4>
                        <asp:TextBox ID="txtCity" required=""   PlaceHolder="City Name" runat="server"></asp:TextBox>
					    </div>
                      
						<div class="search">
                        <asp:Button  ID="btnAdd" runat="server" 
                                Text="Add City" onclick="btnAdd_Click"  />
						</div>
                        <br />
                        <br />
                        <br />
                    <asp:Label ID="Label1" CssClass="label label-info" Font-Size="Medium" runat="server" Text=""></asp:Label>
					
					
				</div>
				<div class="clearfix"></div>
			</div>
            <div>
            <b>All Cities</b><br />
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" PageSize="4" OnPageIndexChanging="GridView1_IndexChanging"
                AutoGenerateColumns="False"  DataKey="CityId" CssClass="table table-bordered" ForeColor="Black">
                
                <FooterStyle BackColor="#1C5E55"  Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5567" Font-Size="Large" ForeColor="White" Font-Bold="true" />
                    <RowStyle BackColor="#E3EAEB" Font-Size="Medium" />
                <Columns>
                
                <asp:TemplateField HeaderText="City Name">
                <ItemTemplate>
               <asp:Label ID="lblCityName" runat="server" Text='<%# Bind("CityName") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="State Name">
                <ItemTemplate>
               <asp:Label ID="lblStateName" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                </Columns>
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <EditRowStyle BackColor="#7C6F57" ForeColor="Black" />
                </asp:GridView>
            </div>
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
