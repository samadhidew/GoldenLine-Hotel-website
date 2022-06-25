
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Golden Line - Hotel</title>
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
    </head>
    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
            <div class="container">
                <a class="navbar-brand" href="index.html">from SRI LANKA</a>
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
        <div class="hero">

            <section class="home-slider owl-carousel">
                <div class="slider-item" style="background-image:url(images/WWP.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center">
                            <div class="col-md-8 ftco-animate">
                                <div class="text mb-5 pb-5">
                                    <h1 class="mb-3">GOLDEN LINE HOTEL</h1>
                                    <h2>More than a hotel... an experience</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image:url(images/QQS.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center">
                            <div class="col-md-8 ftco-animate">
                                <div class="text mb-5 pb-5">
                                    <h1 class="mb-3">GOLDEN LINE HOTEL</h1>
                                    <h2>join with us.</h2>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>

     <section class="ftco-booking ftco-section ftco-no-pt ftco-no-pb">
	  <div class="container">
		  <div class="row">
			  <div class="col-lg-12 pr-1 aside-stretch">
				  <form method="POST" action="${pageContext.request.contextPath}/Explore" class="booking-form">
                                      <input type="text" value="Search" name="action"  hidden > 
				  <div class="row">
                                      
					  <div class="col-md d-flex py-md-4">
						  <div class="form-group align-self-stretch d-flex align-items-end">
							  <div class="wrap bg-white align-self-stretch py-3 px-4">
									  <label for="#">Check-in Date</label>
                                                                          <input type="date" class="form-control" id="in" name="In" placeholder="Check-in date" required>
								  </div>
							  </div>
					  </div>
                                      
                                          <%  if(request.getAttribute("book") == null){  %>
					  <div class="col-md d-flex py-md-4">
						  <div class="form-group align-self-stretch d-flex align-items-end">
							  <div class="wrap bg-white align-self-stretch py-3 px-4">
									  <label for="#">Check-out Date</label>
                                                                          <input type="date" class="form-control" id="out" name="Out" placeholder="Check-out date" required disabled>
								  </div>
							  </div>
					  </div>
					  <div class="col-md d-flex py-md-4">
						  <div class="form-group align-self-stretch d-flex align-items-end">
							  <div class="wrap bg-white align-self-stretch py-3 px-4">
									<label for="#">Room</label>
									<div class="form-field">
									  <div class="select-wrap">
							  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
                                                          <select name="RType" id="" class="form-control" required>
							
								<option value="1">Family Room</option>
								
								<option value="2">Classic Room</option>
								<option value="4">Superior Room</option>
								<option value="3">Luxury Room</option>
							  </select>
							</div>
						</div>
						
					</div>
				</div>
					  </div>
                                      
                                         <div class="col-md d-flex py-md-4">
						  <div class="form-group align-self-stretch d-flex align-items-end">
							  <div class="wrap bg-white align-self-stretch py-3 px-4">
									<label for="#">Meal </label>
									<div class="form-field">
									  <div class="select-wrap">
							  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
							  <select name="Meal" id="" class="form-control">
						
								<option value="1">Bed & Breakfast</option>
                                                                <option value="2">Full Board</option>
                                                                <option value="3">Half Board</option>
                                                                <option value="4">None</option>
							  </select>
							</div>
						</div>
						
					</div>
				</div>
					  </div>
                                          
                                          <div class="col-md d-flex py-md-4">
						  <div class="form-group align-self-stretch d-flex align-items-end">
							  <div class="wrap bg-white align-self-stretch py-3 px-4">
									<label for="#"># Room(s) </label>
									<div class="form-field">
									  <div class="select-wrap">
							  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
							  <select name="No" id="" class="form-control">
						
								<option value="1" selected>Room 01</option>
                                                    <option value="2">Room 02</option>
                                                    <option value="3">Room 03</option>
							  </select>
							</div>
						</div>
						
					</div>
				</div>
					  </div>
                                          
                                          <% } else {  %>
                                          <input type="text" name="hall" value="1" hidden>
					  <div class="col-md d-flex py-md-4">
						<div class="form-group align-self-stretch d-flex align-items-end">
							<div class="wrap bg-white align-self-stretch py-3 px-4">
								  <label for="#">Hall</label>
								  <div class="form-field">
									<div class="select-wrap">
							<div class="icon"><span class="ion-ios-arrow-down"></span></div>
							<select name="HType" id="" class="form-control">
								
							  
							  <option value="1">Classic Banquet Hall</option>
							  
							  <option value="2">Luxury Banquet Hall</option>
							</select>
						  </div>
					  </div>
					  
				  </div>
			  </div>
					</div>
				

					  <div class="col-md d-flex py-md-4">
						  <div class="form-group align-self-stretch d-flex align-items-end">
							  <div class="wrap bg-white align-self-stretch py-3 px-4">
									<label for="#">Guests</label>
									<div class="form-field">
									  <div class="select-wrap">
							  <div class="icon"><span class="ion-ios-arrow-down"></span></div>
							  <select name="vol" id="" class="form-control">
								  
								<option value="">1-150 Persons</option>
								<option value="">150-200 Persons</option>
								<option value="">200-450 Persons</option>
							  </select>
							</div>
							</div>
						  </div>
					</div>
					  </div>
                                         <%    }  %>

					  <div class="col-md d-flex">
						  <div class="form-group d-flex align-self-stretch">
                                                      <button type="submit" class="btn btn-black py-5 py-md-3 px-4 align-self-stretch d-block"><span>Search <small></small></span></button>>
					  </div>
					  </div>
				  </div>
			  </form>
			  </div>
		  </div>
	  </div>
  </section>
        
        <section class="ftco-section bg-light ftco-no-pb">
            <div class="container-fluid px-0">
                 
                <div class="row no-gutters">
                    <c:forEach items="${Rooms}" var="item" varStatus="loop">
                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a href="" class="img" style="${item.getImgStr()}"></a>
                            <div class="half left-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                    <p class="mb-0"><span class="price mr-1">Rs ${item.getPrice()}</span> <span class="per">per night</span></p>
                                    <h3 class="mb-3"><a href="">${item.getrTypeStr()}</a></h3>
                                    <p class="pt-1"><a href="${pageContext.request.contextPath}/${item.getBookingURL()}" class="btn-custom px-3 py-2">Book Now<span class="icon-long-arrow-right"></span></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                     <c:forEach items="${Halls}" var="item" varStatus="loop">
                    <div class="col-lg-6">
                        <div class="room-wrap d-md-flex">
                            <a href="" class="img" style="${item.getImgStr()}"></a>
                            <div class="half left-arrow d-flex align-items-center">
                                <div class="text p-4 p-xl-5 text-center">
                                    <p class="star mb-0"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                    <p class="mb-0"><span class="price mr-1">Rs ${item.getRate()}</span> <span class="per">per day</span></p>
                                    <h3 class="mb-3"><a href="">${item.getHallTypeStr()}</a></h3>
                                    <p class="pt-1"><a href="${pageContext.request.contextPath}/${item.getURL()}" class="btn-custom px-3 py-2">Book Now<span class="icon-long-arrow-right"></span></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                    
                    <%  if(request.getAttribute("Rooms") == null && request.getAttribute("Halls") == null ){  %>
                    <h4>No Items Found! </h4>
                        <% }   
                            %>
                    
                </div>
            </div>
        </section>
     
    <section class="ftco-section">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Welcome to GOLDEN LINE Hotel</span>
                    <h2 class="mb-4">SEE OUR HOTEL'S VIEWS</h2>
                </div>

            </div>
    </section>

    <section class="ftco-section ftco-no-pt ftco-no-pb ftco-services-wrap">
        <div class="container">
            <div class="row no-gutters">
                <div class="col-md-3">
                    <a href="blog.html" class="services-wrap img align-items-end d-flex" style="background-image: url(images/room-3.jpg);">
                        <div class="text text-center pb-2">
                            <h3> Rooms </h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="blog.html" class="services-wrap img align-items-end d-flex" style="background-image: url(images/chera10.jpg);">
                        <div class="text text-center pb-2">
                            <h3>Swiming Pool</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="blog.html" class="services-wrap img align-items-end d-flex" style="background-image: url(images/chera7.jpg);">
                        <div class="text text-center pb-2">
                            <h3>Bar</h3>
                        </div>
                    </a>
                </div>

                <div class="col-md-3">
                    <a href="blog.html" class="services-wrap img align-items-end d-flex" style="background-image: url(images/chera.jpg);">
                        <div class="text text-center pb-2">
                            <h3>Out Door</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="blog.html" class="services-wrap img align-items-end d-flex" style="background-image: url(images/chera6.jpg);">
                        <div class="text text-center pb-2">
                            <h3>Indoor</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="blog.html" class="services-wrap img align-items-end d-flex" style="background-image: url(images/chera5.jpg);">
                        <div class="text text-center pb-2">
                            <h3>Event</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <a href="blog.html" class="services-wrap img align-items-end d-flex" style="background-image: url(images/insta-3.jpg);">
                        <div class="text text-center pb-2">
                            <h3>Activites</h3>
                        </div>
                    </a>
                </div>
                <div class="col-md-3">
                    <div class="services-wrap services-overlay img align-items-center d-flex" style="background-image: url(images/chera2.jpg);">
                        <div class="text text-center pb-2">
                            <h3 class="mb-0">Wedding Hall &amp; etc.</h3>


                        </div>
                    </div>

                </div>
            </div>
    </section>




    <section class="ftco-section testimony-section bg-light">
        <div class="container">
            <div class="row justify-content-center mb-5 pb-3">
                <div class="col-md-7 heading-section text-center ftco-animate">
                    <span class="subheading">Testimony</span>
                    <h2 class="mb-4">Our Happy Guest Says</h2>
                </div>
            </div>  
            <div class="row justify-content-center">
                <div class="col-md-8 ftco-animate">
                    <div class="row ftco-animate">
                        <div class="col-md-12">
                            <div class="carousel-testimony owl-carousel ftco-owl">
                                <div class="item">
                                    <div class="testimony-wrap py-4 pb-5">
                                        <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text text-center">
                                            <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                            <p class="name">Nathan Smith</p>
                                            <span class="position">Guests</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap py-4 pb-5">
                                        <div class="user-img mb-4" style="background-image: url(images/person_2.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text text-center">
                                            <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                            <p class="name">Nathan Smith</p>
                                            <span class="position">Guests</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap py-4 pb-5">
                                        <div class="user-img mb-4" style="background-image: url(images/person_3.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text text-center">
                                            <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                            <p class="name">Nathan Smith</p>
                                            <span class="position">Guests</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap py-4 pb-5">
                                        <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text text-center">
                                            <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                            <p class="name">Nathan Smith</p>
                                            <span class="position">Guests</span>
                                        </div>
                                    </div>
                                </div>
                                <div class="item">
                                    <div class="testimony-wrap py-4 pb-5">
                                        <div class="user-img mb-4" style="background-image: url(images/person_1.jpg)">
                                            <span class="quote d-flex align-items-center justify-content-center">
                                                <i class="icon-quote-left"></i>
                                            </span>
                                        </div>
                                        <div class="text text-center">
                                            <p class="star"><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span><span class="ion-ios-star"></span></p>
                                            <p class="mb-4">A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth.</p>
                                            <p class="name">Nathan Smith</p>
                                            <span class="position">Guests</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>










    <footer class="ftco-footer ftco-bg-dark ftco-section">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md">
                    <div class="ftco-footer-widget mb-4">
                        <h2 class="ftco-heading-2">Golden Hotel</h2>
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
    <script src="js/google-map.js"></script>
    <script src="js/main.js"></script>
<script>
            $( document ).ready(function() {
                var rooms = '${Halls}';
                var halls = '${Rooms}';
            if( (rooms.length > 0) || (halls.length > 0) || window.location.href.indexOf("hall=0") >= 0){}
            else{
                var bookHall = confirm("Do you want to book Hall?");
                if (bookHall) {
                   window.location.href = window.location.href+"?hall=0"
                } else {
                  // the user does not want to delete
                }
            }
            var dtToday = new Date();
    
            var month = dtToday.getMonth() + 1;
            var day = dtToday.getDate();
            var year = dtToday.getFullYear();
            if(month < 10)
                month = '0' + month.toString();
            if(day < 10)
                day = '0' + day.toString();

            var maxDate = year + '-' + month + '-' + day;
            // or instead:
            // var maxDate = dtToday.toISOString().substr(0, 10);
            $('#in').attr('min', maxDate);
            
            
            $('#in').change(function() {
                var date = $(this).val();
                $('#out').attr('min', date);
                $('#out').removeAttr('disabled');
            });
            
            });
           
        </script>
</body>
</html>