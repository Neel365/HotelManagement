<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_AllHotels.aspx.cs" Inherits="Admin_AllHotels" MaintainScrollPositionOnPostback="true"%>

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
    .GridView{margin-top:20px;
              margin-bottom:20px;}
              .navigation{width:70% !important;}    
        .booking{padding:24px !important;}
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
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
		<h2 class="tittle-one">ALL HOTEL</h2>
			<div class="reservation-form">
				<div class="col-md-12 reservation-left">
                   <%--<div class="col-md-10 col-md-offset-1">--%>
       <asp:GridView ID="GridView1" runat="server" CssClass="GridView" AllowSorting="True" 
                    AutoGenerateColumns="False"  CellPadding="3" DataKey="HotelId" Width="100%" AllowPaging="True" 
                           PageSize="5" OnPageIndexChanging="GridView1_IndexChanging" BackColor="White" 
                           BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                    <FooterStyle BackColor="White" ForeColor="#000066" />
                    <HeaderStyle BackColor="#006699" HorizontalAlign="Center" Height="40px" Font-Size="Large" 
                        ForeColor="White" Font-Bold="true" />
                    <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                    <RowStyle HorizontalAlign="Center" Height="30px" Font-Size="Medium" 
                        ForeColor="#000066" />
                    <Columns>
                 <asp:TemplateField HeaderText="Hotel Name">
                <ItemTemplate>
               <asp:Label ID="lblHotelName" runat="server" Text='<%# Bind("HotelName") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Email Address">
                <ItemTemplate>
               <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>  
                <asp:TemplateField HeaderText="Phone Number">
                <ItemTemplate>
               <asp:Label ID="lblPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address 1">
                <ItemTemplate>
               <asp:Label ID="lblAdd1" runat="server" Text='<%# Bind("Address1") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Address 2">
                <ItemTemplate>
               <asp:Label ID="lblAdd2" runat="server" Text='<%# Bind("Address2") %>'></asp:Label>
                </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="City">
                <ItemTemplate>
              <asp:Label ID="lblCity" runat="server" Text='<%# Bind("CityName") %>'></asp:Label>
                </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="State">
                <ItemTemplate>
              <asp:Label ID="lblState" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Country">
                <ItemTemplate>
              <asp:Label ID="lblCountry" runat="server" Text='<%# Bind("Country") %>'></asp:Label>
                </ItemTemplate>
             </asp:TemplateField>
             <asp:TemplateField HeaderText="Star">
                <ItemTemplate>
              <asp:Label ID="lblStar" runat="server" Text='<%# Bind("Star") %>'></asp:Label>
                </ItemTemplate>
             </asp:TemplateField>
             

               </Columns>
                    
                    
                    <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#007DBB" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#00547E" />
                    
                    
                </asp:GridView>
                
            <%--</div>--%>
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
