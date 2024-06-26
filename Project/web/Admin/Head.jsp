
<!DOCTYPE html>
<html lang="zxx">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Admin</title>

        <!-- <link rel="icon" href="../Assets/Template/Admin/img/favicon.png" type="image/png"> -->
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/css/bootstrap.min.css" />
        <!-- themefy CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/themefy_icon/themify-icons.css" />
        <!-- swiper slider CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/swiper_slider/css/swiper.min.css" />
        <!-- select2 CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/select2/css/select2.min.css" />
        <!-- select2 CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/niceselect/css/nice-select.css" />
        <!-- owl carousel CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/owl_carousel/css/owl.carousel.css" />
        <!-- gijgo css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/gijgo/gijgo.min.css" />
        <!-- font awesome CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/font_awesome/css/all.min.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/tagsinput/tagsinput.css" />
        <!-- datatable CSS -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/datatable/css/jquery.dataTables.min.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/datatable/css/responsive.dataTables.min.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/datatable/css/buttons.dataTables.min.css" />
        <!-- text editor css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/text_editor/summernote-bs4.css" />
        <!-- morris css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/morris/morris.css">
        <!-- metarial icon css -->
        <link rel="stylesheet" href="../Assets/Template/Admin/vendors/material_icon/material-icons.css" />

        <!-- menu css  -->
        <link rel="stylesheet" href="../Assets/Template/Admin/css/metisMenu.css">
        <!-- style CSS -->
        <link rel="stylesheet" href="../Assets/Template/form.css">
        <link rel="stylesheet" href="../Assets/Template/Admin/css/style.css" />
        <link rel="stylesheet" href="../Assets/Template/Admin/css/colors/default.css" id="colorSkinCSS">
        <link rel="stylesheet" href="../Assets/Template/Main/css/style.css">
    </head>
    <body class="crm_body_bg">



        <!-- main content part here -->

        <!-- sidebar  -->
        <!-- sidebar part here -->
        <nav class="sidebar">
            <div class="logo d-flex justify-content-between">
                <a href="HomePage.jsp"><h2 align="center">Welcome<br>Admin<br><%=session.getAttribute("adminname")%></h2></a>
                <div class="sidebar_close_icon d-lg-none">
                    <i class="ti-close"></i>
                </div>
            </div>
            <ul id="sidebar_menu">
                <li class="side_menu_title">
                    <span>Dashboard</span>
                </li>
                <li class="mm-active">
                    <a  href="HomePage.jsp"  aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/1.svg" alt="">
                        <span>Dashboard</span>
                    </a>
                   
                </li>
                <li class="side_menu_title">
                    <span>Applications</span>
                </li>
               
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>View/Add D-P-L</span>
                    </a>
                    
                   <ul>
                   <li>
                    
                        <li><a href="District.jsp">District</a></li>
                        <li><a href="Place.jsp">Place</a></li>
                        <li><a href="Location.jsp">Location</a></li>
                        <li><a href="LocationGallery.jsp">Location Gallery</a></li>
                    </ul>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Guide</span>
                    </a>
                    
                   <ul>
                   <li>
                        <li><a href="NewGuidelist.jsp">New guide List</a></li>
                        <li><a href="AcceptedGuidelist.jsp">Accepted List</a></li>
                        <li><a href="Rejectedguidelist.jsp">Rejected List</a></li>
                    </ul>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Package</span>
                    </a>
                    
                   <ul>
                   <li>
                    
                        <li><a href="Package.jsp">Package </a></li>
                        <li><a href="PackageType.jsp">Package type</a></li>
                        <li><a href="PackageLocation.jsp">Package location</a></li>
                    </ul>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>User</span>
                    </a>
                    
                   <ul>
                   <li>
                    
                        <li><a href="RegistredUsers.jsp">Registred Users</a></li>
                    </ul>
                </li>
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Bookings</span>
                    </a>
                    
                   <ul>
                   <li>
                    
                        <li><a href="ViewUserBookings.jsp">View Bookings</a></li>
                        <li><a href="AcceptedBookings.jsp">Confirmed/Guide assign </a></li>
                        <li><a href="RejectedBookings.jsp">cancelled bookings</a></li>
                        <li><a href="AssignedList.jsp">Bookings status</a></li>
                    </ul>
                </li>
  
                <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>promocodes</span>
                    </a>
                    
                   <ul>
                   <li>
                    
                        <li><a href="Promocode.jsp">Add promocode</a></li>
                        <li><a href="UsedPromocodes.jsp">View used promocodes</a></li>
                    </ul>
                   <li class="">
                    <a   class="has-arrow" href="javascript:void(0)" aria-expanded="false">
                        <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                        <span>Complaints</span>
                    </a>
                    
                   <ul>
                   <li>
                    
                        <li><a href="ViewComplaints.jsp">View complaints</a></li>
                        <li><a href="ComplaintReply.jsp">Complaint reply</a></li>
                        <li><a href="SolvedComplaints.jsp">Solved complaints</a></li>
                    </ul>
                   </li>
                   <li class="">
                        <a   class="has-arrow" href="../logout.jsp" aria-expanded="false">
                            <img src="../Assets/Template/Admin/img/menu-icon/2.svg" alt="">
                            <span>Logout</span>
                        </a>	
                   </li>
            </ul>

        </nav>
                <br><br><br><br>
                <div id="tab" align="center">