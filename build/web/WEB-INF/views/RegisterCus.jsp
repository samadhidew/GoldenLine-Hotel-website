
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Golden Line - Hotels </title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <link href="https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Playfair+Display:400,400i,700,700i" rel="stylesheet">

        <link rel="stylesheet" href="css/open-iconic-bootstrap.min.css">
        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/owl.theme.default.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">

        <link rel="stylesheet" href="css/aos.css">

        <link rel="stylesheet" href="css/ionicons.min.css">

        <link rel="stylesheet" href="css/bootstrap-datepicker.css">
        <link rel="stylesheet" href="css/jquery.timepicker.css">


        <link rel="stylesheet" href="css/flaticon.css">
        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <p>${param.message}</p>
        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">From Sri Lanka</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="Explore" class="nav-link">Home</a></li>
                        <li class="nav-item"><a href="rooms.html" class="nav-link">Rooms</a></li>
                        <li class="nav-item"><a href="restaurant.html" class="nav-link">Wedding & Events</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">About</a></li>
                        <li class="nav-item"><a href="blog.html" class="nav-link">Gallery</a></li>
                        <li class="nav-item"><a href="Feedback" class="nav-link">Contact</a></li>
                        <li class="nav-item"><a href="signin" class="nav-link">Sign In</a></li>
                        <li class="nav-item"><a href="register" class="nav-link">Join Now</a></li>

                        <li class="nav-item"><a href="Room.admin" class="nav-link">Admin</a></li>

                    </ul>
                </div>
            </div>
        </nav>
        <!-- END nav -->
        <div class="hero-wrap" style="background-image: url('images/bg_1.jpg');">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text d-flex align-itemd-end justify-content-center">
                    <div class="col-md-9 ftco-animate text-center d-flex align-items-end justify-content-center">
                        <div class="text">
                            <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.html">Home</a></span> <span>Join Now</span></p>
                            <h1 class="mb-4 bread">Join Now</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="ftco-section signin-section bg-light">
            <div class="container">


                <h2 class="h3">Golden Line Hotel</h2>



                <p>Join our satisfying website and enjoy the best recommendation for a wonderful hotel experience.</p>
                <div class="row block-9">
                    <div class="col-md-6 order-md-last d-flex">
                        <form action="register" method="post" class="bg-white p-5 signin-form">
                            <div class="user-details">
                                <div class="select-box" >
                                    <span class="details">NIC</span>
                                    <input type="text" placeholder="Enter your NIC" required name="nic">
                                </div>
                                <div class="input-box">
                                    <span class="details">Full Name</span>
                                    <input type="text" placeholder="Enter your full name" required name="fullname">
                                </div>
                                <div class="calendar-box">
                                    <span class="details">Date of Birth</span>
                                    <input type="date" placeholder="Enter your DOB" required name="dob">
                                </div>
                                
                                <div class="input-box">
                                    <span class="details">Email</span>
                                    <input type="text" placeholder="Enter your email" required name="mail">
                                </div>
                                <div class="input-box">
                                    <span class="details">Phone Number</span>
                                    <input type="text" placeholder="(+94)" required name="phone">
                                </div>
                                
                                <div class="input-box">
                                    <span class="details">Password</span>
                                    <input type="password" placeholder="Enter your password" id = "myInput1" required name="pwd">
                                    <span class="eyejoin" onclick="myFunction1()">
                                        <i id="hide1" class="fa fa-eye"></i>
                                        <i id="hide2" class="fa fa-eye-slash"></i>
                                    </span>

                                </div>
                                <div class="input-box">
                                    <span class="details">Confirm Password</span>
                                    <input type="password" placeholder="Confirm your password" id = "myInput2" required name="cpwd">
                                    <span class="eyejoin" onclick="myFunction2()">
                                        <i id="hide1" class="fa fa-eye"></i>
                                        <i id="hide2" class="fa fa-eye-slash"></i>
                                    </span>
                                </div>
                                <div class="gender-details">
                                    <input type="radio" name="gender" id="dot-1">
                                    <input type="radio" name="gender" id="dot-2">
                                    <span class="gender-title">Gender</span>
                                    <div class="category">
                                        <label for="dot-1">
                                            <span class="dot one"></span>
                                            <span class="gender">Male</span>
                                        </label>
                                        <label for="dot-2">
                                            <span class="dot two"></span>
                                            <span class="gender">Female</span>
                                        </label>
                                    </div>
                                    <div class="button">
                                        <input type="submit" value="Register" >    
                                    </div>
                                    </form>
                                </div>
                            </div>
                            </section>

                            <footer class="ftco-footer ftco-bg-dark ftco-section">
                                <div class="container">
                                    <div class="row mb-5">
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4">
                                                <h2 class="ftco-heading-2">Golden Line Hotel</h2>
                                                <p>Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts.</p>
                                                <ul class="ftco-footer-social list-unstyled float-md-left float-lft mt-5">
                                                    <li class="ftco-animate"><a href="#"><span class="icon-twitter"></span></a></li>
                                                    <li class="ftco-animate"><a href="#"><span class="icon-facebook"></span></a></li>
                                                    <li class="ftco-animate"><a href="#"><span class="icon-instagram"></span></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4 ml-md-5">
                                                <h2 class="ftco-heading-2">Useful Links</h2>
                                                <ul class="list-unstyled">
                                                    <li><a href="blog.html" class="py-2 d-block">Gallery</a></li>
                                                    <li><a href="rooms.html" class="py-2 d-block">Rooms</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4">
                                                <h2 class="ftco-heading-2">Privacy</h2>
                                                <ul class="list-unstyled">

                                                    <li><a href="contact.html" class="py-2 d-block">Contact Us</a></li>

                                                </ul>
                                            </div>
                                        </div>
                                        <div class="col-md">
                                            <div class="ftco-footer-widget mb-4">
                                                <h2 class="ftco-heading-2">Have a Questions?</h2>
                                                <div class="block-23 mb-3">
                                                    <ul>
                                                        <li><span class="icon icon-map-marker"></span><span class="text">203 Fake St. Mountain View, San Francisco, California, USA</span></li>
                                                        <li><a href="#"><span class="icon icon-phone"></span><span class="text">+2 392 3929 210</span></a></li>
                                                        <li><a href="#"><span class="icon icon-envelope"></span><span class="text">info@yourdomain.com</span></a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-md-12 text-center">

                                            <p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                                                Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart color-danger" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>.Downloaded from <a href="https://themeslab.org/" target="_blank">Themeslab</a>
                                                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                                        </div>
                                    </div>
                                </div>
                            </footer>



                            <!-- loader -->
                            <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


                            <script src="js/jquery.min.js"></script>
                            <script src="js/jquery-migrate-3.0.1.min.js"></script>
                            <script src="js/popper.min.js"></script>
                            <script src="js/bootstrap.min.js"></script>
                            <script src="js/jquery.easing.1.3.js"></script>
                            <script src="js/jquery.waypoints.min.js"></script>
                            <script src="js/jquery.stellar.min.js"></script>
                            <script src="js/owl.carousel.min.js"></script>
                            <script src="js/jquery.magnific-popup.min.js"></script>
                            <script src="js/aos.js"></script>
                            <script src="js/jquery.animateNumber.min.js"></script>
                            <script src="js/jquery.mb.YTPlayer.min.js"></script>
                            <script src="js/bootstrap-datepicker.js"></script>
                            <!-- // <script src="js/jquery.timepicker.min.js"></script> -->
                            <script src="js/scrollax.min.js"></script>
                            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
                            <script src="js/google-map.js"></script>
                            <script src="js/main.js"></script>
                            <script>
                                                    function myFunction1() {
                                                        var x = document.getElementById("myInput1");
                                                        var y = document.getElementById("hide1");
                                                        var z = document.getElementById("hide2");

                                                        if (x.type === 'password')
                                                        {
                                                            x.type = "text";
                                                            y.style.display = "block";
                                                            z.style.display = "none";
                                                        } else
                                                        {
                                                            x.type = "password";
                                                            y.style.display = "none";
                                                            z.style.display = "block";
                                                        }

                                                    }
                            </script>
                            <script>
                                function myFunction2() {
                                    var x = document.getElementById("myInput2");
                                    var y = document.getElementById("hide1");
                                    var z = document.getElementById("hide2");

                                    if (x.type === 'password')
                                    {
                                        x.type = "text";
                                        y.style.display = "block";
                                        z.style.display = "none";
                                    } else
                                    {
                                        x.type = "password";
                                        y.style.display = "none";
                                        z.style.display = "block";
                                    }

                                }
                            </script>
                            </body>
                            </html>
