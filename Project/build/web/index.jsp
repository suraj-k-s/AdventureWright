<%@page import="java.sql.ResultSet"%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>

<!DOCTYPE html>
<html lang="en">

<head>
    <title>Travel Get: Your adventure starts here</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">

    
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="Assets/Template/Main/css/animate.css">

    <link rel="stylesheet" href="Assets/Template/Main/css/owl.carousel.min.css">
    <link rel="stylesheet" href="Assets/Template/Main/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="Assets/Template/Main/css/magnific-popup.css">

    <link rel="stylesheet" href="Assets/Template/Main/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="Assets/Template/Main/css/jquery.timepicker.css">


    <link rel="stylesheet" href="Assets/Template/Main/css/flaticon.css">
    <link rel="stylesheet" href="Assets/Template/Main/css/style.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="Assets/Template/Main/index.html">Adventure<span style="font-size:21px">Wright</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="Guest/User.jsp" class="nav-link">User</a></li>
                    <li class="nav-item"><a href="Guest/Guide.jsp" class="nav-link">Guide</a></li>
                    <li class="nav-item"><a href="Guest/Login.jsp" class="nav-link">Login</a></li>
                </ul>
            </div>
        </div>
    </nav>  

    <div class="hero-wrap js-fullheight" style="background-image: url('Assets/Template/Main/images/bg_5.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center" data-scrollax-parent="true">
                <div class="col-md-7 ftco-animate">
                    <span class="subheading">Welcome to Travel Get</span>
                    <h1 class="mb-4" style="font-size: 76px;">Discover Your Favorite Place with Us</h1>
                    <p class="caps" style="font-size: 25px;">Travel to the any corner of the kerala,</p>
                    <p class="caps" style="font-size: 25px;"> without going around in circles</p>
                </div>
                <a href="https://vimeo.com/45830194"
                    class="icon-video popup-vimeo d-flex align-items-center justify-content-center mb-4">
                    <span class="fa fa-play"></span>
                </a>
            </div>
        </div>
    </div>


    <section class="ftco-section services-section">
        <div class="container">
            <div class="row d-flex">
                <div class="col-md-6 order-md-last heading-section pl-md-5 ftco-animate d-flex align-items-center">
                    <div class="w-100">
                        <span class="subheading">Welcome to Travel Get</span>
                        <h2 class="mb-4">It's time to start your adventure</h2>
                        <p>Kerala was named by Time magazine 2022 amoung the 50 extraordinary destinations to
                             explore in it's list of the worlds greatest places.</p>
                        <p>In 2023 kerala was listed at the 13th spot in the 'New York Times' annual list of places
                           to visit and was the only tourist destination listed from India.</p>
                    <p> <a href="User/SearchPackage.jsp" class="btn btn-primary py-3 px-4">Search Destination</a></p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <%
                        String selqry="SELECT * FROM tbl_package ORDER BY RAND() LIMIT 4;";
                        int i=0;
                       ResultSet data=con.selectCommand(selqry);
                       while(data.next()){
                        i++;
                        %>

                       <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-1 d-block img"
                                style="background-image: url(Assets/Files/<%=data.getString("package_photo")%>)">
                                <div class="icon d-flex align-items-center justify-content-center"><span
                                        class="flaticon-paragliding"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3"><%=data.getString("package_name")%></h3>
                                    <p>This package has been booked by several users in recent hours
                                    </p>
                                </div>
                            </div>
                        </div>

                        <%
                       }
                        %>
                       
                    </div>
                </div>
            </div>
        </div>
    </section>

        <footer class="ftco-footer bg-bottom ftco-no-pt" style="background-image: url(Assets/Template/Main/images/bg_3.jpg);">
			<div class="container">
				<div class="row mb-5">
					<div class="col-md pt-5">
						<div class="ftco-footer-widget pt-md-5 mb-4">
							<h2 class="ftco-heading-2">About</h2>
							<p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
							<ul class="ftco-footer-social list-unstyled float-md-left float-lft">
								<li class="ftco-animate"><a href="#"><span class="fa fa-twitter"></span></a></li>
								<li class="ftco-animate"><a href="#"><span class="fa fa-facebook"></span></a></li>
								<li class="ftco-animate"><a href="#"><span class="fa fa-instagram"></span></a></li>
							</ul>
						</div>
					</div>
					<div class="col-md pt-5 border-left">
						<div class="ftco-footer-widget pt-md-5 mb-4">
							<h2 class="ftco-heading-2">Have a Questions?</h2>
							<div class="block-23 mb-3">
								<ul>
									<li><span class="icon fa fa-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
									<li><a href="#"><span class="icon fa fa-phone"></span><span class="text">+2 392 3929 210</span></a></li>
									<li><a href="#"><span class="icon fa fa-paper-plane"></span><span class="text">info@yourdomain.com</span></a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
				
			</div>
	    </footer>



    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
        <svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                stroke="#F96D00" />
        </svg>
    </div>


    <script src="Assets/Template/Main/js/jquery.min.js"></script>
    <script src="Assets/Template/Main/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="Assets/Template/Main/js/popper.min.js"></script>
    <script src="Assets/Template/Main/js/bootstrap.min.js"></script>
    <script src="Assets/Template/Main/js/jquery.easing.1.3.js"></script>
    <script src="Assets/Template/Main/js/jquery.waypoints.min.js"></script>
    <script src="Assets/Template/Main/js/jquery.stellar.min.js"></script>
    <script src="Assets/Template/Main/js/owl.carousel.min.js"></script>
    <script src="Assets/Template/Main/js/jquery.magnific-popup.min.js"></script>
    <script src="Assets/Template/Main/js/jquery.animateNumber.min.js"></script>
    <script src="Assets/Template/Main/js/bootstrap-datepicker.js"></script>
    <script src="Assets/Template/Main/js/scrollax.min.js"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="Assets/Template/Main/js/google-map.js"></script>
    <script src="Assets/Template/Main/js/main.js"></script>

</body>

</html>