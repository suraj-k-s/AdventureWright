<!DOCTYPE html>
<html lang="en">
    <?php session_start(); ?>

<head>
    <title>Travel Get: Your adventure starts here</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="../Assets/Template/Main/css/animate.css">

    <link rel="stylesheet" href="../Assets/Template/Main/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../Assets/Template/Main/css/owl.theme.default.min.css">
    <link rel="stylesheet" href="../Assets/Template/Main/css/magnific-popup.css">

    <link rel="stylesheet" href="../Assets/Template/Main/css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="../Assets/Template/Main/css/jquery.timepicker.css">


    <link rel="stylesheet" href="../Assets/Template/Main/css/flaticon.css">
    <link rel="stylesheet" href="../Assets/Template/Main/css/style.css">
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="../Assets/Template/Main/index.html">Travel<span style="font-size:21px">Get</span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav"
                aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                <li class="nav-item active"><a href="../index.jsp" class="nav-link">Home</a></li>
                    <li class="nav-item"><a href="Myprofile.jsp" class="nav-link">My Profile</a></li>
                    <li class="nav-item"><a href="Editprofile.jsp" class="nav-link">Edit Profile</a></li>
                    <li class="nav-item"><a href="Changepassword.jsp" class="nav-link">Change password</a></li>
                    <li class="nav-item"><a href="SearchPackage.jsp" class="nav-link">Search Package</a></li>
                    <li class="nav-item"><a href="MyBooking.jsp" class="nav-link">My Booking</a></li>
                    <li class="nav-item"><a href="logout.jsp" class="nav-link">Logout</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="hero-wrap js-fullheight" style="background-image: url('../Assets/Template/Main/images/bg_5.jpg');">
        <div class="overlay"></div>
        <div class="container">
            <div class="row no-gutters slider-text js-fullheight align-items-center" data-scrollax-parent="true">
                <div class="col-md-7 ftco-animate">
                    <span style="font-family:Gill Sans,sans-serif;font-weight:200;font-size:25px; color:white; margin: 30px">Welcome to Travel Get</span>
                    <h1 class="mb-4" style="font-size: 76px;"><?php echo $_SESSION["userfirstname"]?></h1>
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
                    <div class="w-100">>
                        <span class="subheading">Welcome to Travel Get</span>
                        <h2 class="mb-4">It's time to start your adventure</h2>
                        <p>Kerala was named by Time magazine 2022 amoung the 50 extraordinary destinations to
                             explore in it's list of the worlds greatest places.</p>
                        <p>In 2023 kerala was listed at the 13th spot in the 'New York Times' annual list of places
                           to visit and was the only tourist destination listed from India.</p>
                        <p><a href="../Assets/Template/Main/#" class="btn btn-primary py-3 px-4">Search Destination</a></p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-1 d-block img"
                                style="background-image: url(../Assets/Template/Main/images/services-1.jpg);">
                                <div class="icon d-flex align-items-center justify-content-center"><span
                                        class="flaticon-paragliding"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Activities</h3>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-2 d-block img"
                                style="background-image: url(../Assets/Template/Main/images/services-2.jpg);">
                                <div class="icon d-flex align-items-center justify-content-center"><span
                                        class="flaticon-route"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Travel Arrangements</h3>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-3 d-block img"
                                style="background-image: url(../Assets/Template/Main/images/services-3.jpg);">
                                <div class="icon d-flex align-items-center justify-content-center"><span
                                        class="flaticon-tour-guide"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Private Guide</h3>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-12 col-lg-6 d-flex align-self-stretch ftco-animate">
                            <div class="services services-1 color-4 d-block img"
                                style="background-image: url(../Assets/Template/Main/images/services-4.jpg);">
                                <div class="icon d-flex align-items-center justify-content-center"><span
                                        class="flaticon-map"></span></div>
                                <div class="media-body">
                                    <h3 class="heading mb-3">Location Manager</h3>
                                    <p>A small river named Duden flows by their place and supplies it with the necessary
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <footer class="ftco-footer bg-bottom ftco-no-pt"
        style="background-image: url(../Assets/Template/Main/images/bg_3.jpg);">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">

                    <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;
                        <script>document.write(new Date().getFullYear());</script> All rights reserved | This template
                        is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com"
                            target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    </p>
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


    <script src="../Assets/Template/Main/js/jquery.min.js"></script>
    <script src="../Assets/Template/Main/js/jquery-migrate-3.0.1.min.js"></script>
    <script src="../Assets/Template/Main/js/popper.min.js"></script>
    <script src="../Assets/Template/Main/js/bootstrap.min.js"></script>
    <script src="../Assets/Template/Main/js/jquery.easing.1.3.js"></script>
    <script src="../Assets/Template/Main/js/jquery.waypoints.min.js"></script>
    <script src="../Assets/Template/Main/js/jquery.stellar.min.js"></script>
    <script src="../Assets/Template/Main/js/owl.carousel.min.js"></script>
    <script src="../Assets/Template/Main/js/jquery.magnific-popup.min.js"></script>
    <script src="../Assets/Template/Main/js/jquery.animateNumber.min.js"></script>
    <script src="../Assets/Template/Main/js/bootstrap-datepicker.js"></script>
    <script src="../Assets/Template/Main/js/scrollax.min.js"></script>
    <script
        src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="../Assets/Template/Main/js/google-map.js"></script>
    <script src="../Assets/Template/Main/js/main.js"></script>

</body>

</html>