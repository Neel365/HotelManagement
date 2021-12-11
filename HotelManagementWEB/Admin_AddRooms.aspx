<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_AddRooms.aspx.cs" Inherits="Admin_AddRooms" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Hotel Project</title>
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1" />
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
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
        rel='stylesheet' type='text/css'>
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
    <link href="//netdna.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
        rel="stylesheet">
    <style>
        .search
        {
            float: left !important;
        }
        .navigation
        {
            width: 70% !important;
        }
        .btn-file{margin-bottom:20px !important;}
        
        .booking{padding:38px !important;}
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
                        <h1>
                            <a href="Admin_Home.aspx"><span class="glyphicon glyphicon-home" aria-hidden="true">
                            </span>Hotel Project</a></h1>
                    </div>
                    <div class="navigation">
                        <span class="menu">
                            <img src="images/menu.png" alt="" /></span>
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
                    <div class="clearfix">
                    </div>
                </div>
            </div>
        </div>
        <!-- //banner -->
        <!--about-->
        <div class="booking">
            <div class="container">
                <div class="col-md-5 col-md-offset-1">
                    <h2 class="tittle-one">
                        ADD ROOMS</h2>
                    <div class="reservation-form">
                        <div class="col-md-9 reservation-right">
                            <div class="book-pag">
                                <div class="dropdown-button">
                                    <h4>
                                        Room Type</h4>
                                    <asp:DropDownList ID="ddlRoom" AutoPostBack="true" CssClass="dropdown" runat="server">
                                    </asp:DropDownList>
                                </div>
                                <div>
                                    <h4>
                                        Price Per Room</h4>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtPrice"  ValidationGroup="add" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtPrice" PlaceHolder="Price Per Room"
                                        runat="server"></asp:TextBox>
                                </div>
                                <div class="search">
                                    <asp:Button ID="btnAdd" runat="server" Text="Add Rooms" ValidationGroup="add" 
                                        onclick="btnAdd_Click"   />
                                </div>
                                <div class="search col-md-offset-1">
                                     <asp:Button ID="BbtnBack" runat="server" Text="Back" onclick="BbtnBack_Click" />
                                </div>
                                <br />
                                <br />
                                <br />
                                <div class="col-md-12">
                                    <asp:Label ID="Label1" CssClass="label label-success" runat="server" Font-Size="Medium"></asp:Label>
                                </div>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5 col-md-offset-1">
                    <h2 class="tittle-one">
                        ADD PHOTOS</h2>
                    <div class="reservation-form">
                        <div class="col-md-9 reservation-right">
                            <div class="book-pag">
                                <div>
                                    <h4>
                                        Photo Name</h4>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtName" ValidationGroup="add2" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtName"   PlaceHolder="Photo Name" runat="server"></asp:TextBox>
                                </div>
                                <div>
                                    <h4>
                                        Upload Photo</h4>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ValidationGroup="add2" ControlToValidate="FileUpload1" runat="server" ErrorMessage="Required" Display="Dynamic"></asp:RequiredFieldValidator>
                                    <asp:FileUpload ID="FileUpload1" CssClass="btn btn-default btn-file" runat="server" />
                                </div>
                                <div class="search">
                                    <asp:Button ID="btnImgAdd" runat="server" Text="Add Photo" 
                                        ValidationGroup="add2" onclick="btnImgAdd_Click"/>
                                </div>
                                <div class="search col-md-offset-1">
                                <asp:Button ID="btnBack2" runat="server" Text="Back" onclick="btnBack2_Click" />
                                </div>
                                    
                                </div>
                                <br />
                                <br />
                                <br />
                                <div class="col-md-12">
                                    <asp:Label ID="Label2" CssClass="label label-success" runat="server" Font-Size="Medium"></asp:Label>
                                </div>
                            </div>
                            <div class="clearfix">
                            </div>
                        </div>
                        <div>
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
                    <p>
                        &copy; 2021 Hotel Project. All Rights Reserved by Angkon Biswas & Sumit Pal</p>
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
            <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;">
            </span></a>
            <!-- //smooth scrolling -->
        </div>
        
    </form>
</body>
</html>
