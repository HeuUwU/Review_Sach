<%-- 
    Document   : Home
    Created on : May 27, 2023, 10:38:55 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
    <head>
        <style>
            .heart {
                display: none; /* Ẩn trái tim ban đầu */
                color: red; /* Màu sắc của trái tim */
                font-size: 24px; /* Kích thước của trái tim */
                animation: heartbeat 1s infinite; /* Hiệu ứng lấp lánh */
                margin-left: 20px;
            }

            @keyframes heartbeat {
                0% {
                    transform: scale(1); /* Kích thước ban đầu */
                }
                50% {
                    transform: scale(1.2); /* Kích thước phóng to */
                }
                100% {
                    transform: scale(1); /* Kích thước trở lại ban đầu */
                }

            }
            .limited-words {
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 5; /* Số từ tối đa cần giới hạn */
                overflow: hidden;
                text-overflow: ellipsis;
            }
            .single-popular-carusel .thumb-wrap .thumb img {
                width: 300px; /* Đặt kích thước chiều rộng của ảnh là 1000px */
                height: 200px; /* Đặt kích thước chiều cao của ảnh là 750px */
                object-fit: cover; /* Đảm bảo ảnh không bị biến dạng và điều chỉnh để vừa với kích thước */
                margin-right: 30px;
            }
        </style>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/HeuUwU.png">
        <!-- Author Meta -->
        <meta name="author" content="colorlib">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->


        <title>Education</title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--CSS
        ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/nice-select.css">							
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">			
        <link rel="stylesheet" href="css/jquery-ui.css">			
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>
        <header id="header" id="home">
            <div class="header-top">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 col-sm-6 col-8 header-top-left no-padding">
                            <ul>
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                                <li><a href="#"><i class="fa fa-behance"></i></a></li>
                            </ul>			
                        </div>
                        <div class="col-lg-6 col-sm-6 col-4 header-top-right no-padding">
                            <a href="tel:+953 012 3654 896"><span class="lnr lnr-phone-handset"></span> <span class="text">+84 0365551401</span></a>
                            <a href="mailto:Keto1412002@gmail.com"><span class="lnr lnr-envelope"></span> <span class="text">Keto1412002@gmail.com</span></a>			
                        </div>
                    </div>			  					
                </div>
            </div>
            <div class="container main-menu">
                <div class="row align-items-center justify-content-between d-flex">
                    <div id="logo">
                        <a href="home"><img src="img/logo.png" alt="" title="" /></a>
                    </div>
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li><a href="home">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="reviewBook">Review Book</a></li>				          					          		          
                            <li><a href="contact.html">Contact</a></li>
                                <c:if test="${sessionScope.role == null}">
                                <li><a href="login">Login</a></li>
                                <li><a href="signup">Register</a></li>
                                </c:if>
                                <c:if test="${sessionScope.role == 1}">
                                <li><a style="color: #f7631b">Hi, ${name}</a></li>
                                <li><a href="logout">Sign out</a></li>
                                </c:if>
                                <c:if test="${sessionScope.role == 2}">
                                
                                <li class="menu-has-children"><a href="home" style="color: #f7631b">Admin functions</a>
                                    <ul>
                                        <li><a href="customer">View customer</a></li>
                                        <li><a href="book">View book</a></li>
                                        <li><a href="category">View category</a></li>
                                    </ul>
                                </li>
                                <li><a href="logout">Sign out</a></li>
                                </c:if>
                        </ul>
                    </nav>		    		
                </div>

            </div>
        </header><!-- #header -->

        <!-- start banner Area -->
        <section class="banner-area relative" id="home">
            <div class="overlay overlay-bg"></div>	
            <div class="container">
                <div class="row fullscreen d-flex align-items-center justify-content-between">
                    <div class="banner-content col-lg-9 col-md-12">
                        <h1 class="text-uppercase">
                            We Ensure better book
                            for a better world			
                        </h1>
                        <p class="pt-10 pb-10">
                            Read the book if you want to pass the prj301 subject of Mr. Tien aka TienPro <br>
                            -HeuUwU-
                        </p>
                        <a href="reviewBook" class="primary-btn text-uppercase">Get Started</a>
                    </div>										
                </div>
            </div>					
        </section>
        <!-- End banner Area -->

        <!-- Start feature Area -->
        <section class="feature-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-feature">
                            <div class="title">
                                <h4>William P. Heu</h4>
                            </div>
                            <div class="desc-wrap">
                                <p>
                                    "If you want to be a good student, don't argue with Mr. Tien, because everything he says is the truth"
                                </p>
                                <button class="primary-btn text-uppercase" onclick="showHeart(0)">Show love</button>
                                <span class="heart">&#10084;</span>									
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-feature">
                            <div class="title">
                                <h4>MaNguCaDe Gandhieu</h4>
                            </div>
                            <div class="desc-wrap">
                                <p>
                                    "Cherish the heart below, for I spent the entire evening coding it."
                                </p>
                                <button class="primary-btn text-uppercase" onclick="showHeart(1)">Show love</button>
                                <span class="heart">&#10084;</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-feature">
                            <div class="title">
                                <h4> J.K. VanBeo</h4>
                            </div>
                            <div class="desc-wrap">
                                <p>
                                    "Want to love a man who knows how to pamper<br>
                                    Don't love Hieu"
                                </p>
                                <button class="primary-btn text-uppercase" onclick="showHeart(2)">Show love</button>
                                <span class="heart">&#10084;</span>									
                            </div>
                        </div>
                    </div>												
                </div>
            </div>	
        </section>
        <!-- End feature Area -->

        <!-- Start popular-course Area -->
        <section class="popular-course-area section-gap">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Popular Book we offer</h1>
                            <p>There is a moment in the life of any aspiring.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="active-popular-carusel">
                        <c:forEach items="${data}" var="item">
                            <div class="single-popular-carusel">
                                <div class="thumb-wrap relative">
                                    <div class="thumb relative">
                                        <div class="overlay overlay-bg"></div>
                                        <a href="bookDetail?id=${item.getProId()}">
                                            <img class="img-fluid" src="img/book/${item.getImage()}"">
                                        </a>
                                    </div>
                                    <div class="meta d-flex justify-content-between">
                                        <p><span class="lnr lnr-users"></span> ${item.getView()}</p>
                                    </div>
                                </div>
                                <div class="details">
                                    <a href="bookDetail?id=${item.getProId()}">
                                        <h4>
                                            ${item.getName()}
                                        </h4>
                                    </a>
                                    <p class="limited-words">
                                        ${item.getContent()}
                                    </p>
                                    <div class="meta d-flex justify-content-between">
                                        <p><span class="lnr lnr-users"></span> ${item.getView()} </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>	
                <!-- End popular-course Area -->

                <!-- Start fiction Book Area -->
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Fiction Book we offer</h1>
                            <p>Exploring the realms of fiction allows me to escape reality and delve into a realm of endless possibilities.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="active-popular-carusel">
                        <c:forEach items="${fiction}" var="item">
                            <div class="single-popular-carusel">
                                <div class="thumb-wrap relative">
                                    <div class="thumb relative">
                                        <div class="overlay overlay-bg"></div>	
                                        <a href="bookDetail?id=${item.getProId()}">
                                            <img class="img-fluid" src="img/book/${item.getImage()}" alt="">
                                        </a>
                                    </div>
                                    <div class="meta d-flex justify-content-between">
                                        <p><span class="lnr lnr-users"></span> ${item.getView()}</p>
                                    </div>
                                </div>
                                <div class="details">
                                    <a href="bookDetail?id=${item.getProId()}">
                                        <h4>
                                            ${item.getName()}
                                        </h4>
                                    </a>
                                    <p class="limited-words">
                                        ${item.getContent()}
                                    </p>
                                    <div class="meta d-flex justify-content-between">
                                        <p><span class="lnr lnr-users"></span> ${item.getView()} </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>	
                <!-- End fiction Book Area -->

                <!-- Start Non-fiction Book Area -->
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Non-fiction Book we offer</h1>
                            <p>Non-fiction enlightens and educates, offering a glimpse into real-life experiences, knowledge, and events.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="active-popular-carusel">
                        <c:forEach items="${science}" var="item">
                            <div class="single-popular-carusel">
                                <div class="thumb-wrap relative">
                                    <div class="thumb relative">
                                        <div class="overlay overlay-bg"></div>	
                                        <a href="bookDetail?id=${item.getProId()}">
                                            <img class="img-fluid" src="img/book/${item.getImage()}" alt="">
                                        </a>
                                    </div>
                                    <div class="meta d-flex justify-content-between">
                                        <p><span class="lnr lnr-users"></span> ${item.getView()} </p>
                                    </div>
                                </div>
                                <div class="details">
                                    <a href="bookDetail?id=${item.getProId()}">
                                        <h4>
                                            ${item.getName()}
                                        </h4>
                                    </a>
                                    <p class="limited-words">
                                        ${item.getContent()}
                                    </p>
                                    <div class="meta d-flex justify-content-between">
                                        <p><span class="lnr lnr-users"></span> ${item.getView()} </p>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>	
        </section>
        <!-- End Science Book Area -->

        <!-- start footer Area -->		
        <footer class="footer-area section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Top Products</h4>
                            <ul>
                                <li><a href="#">Managed Website</a></li>
                                <li><a href="#">Manage Reputation</a></li>
                                <li><a href="#">Power Tools</a></li>
                                <li><a href="#">Marketing Service</a></li>
                            </ul>								
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Quick links</h4>
                            <ul>
                                <li><a href="#">Jobs</a></li>
                                <li><a href="#">Brand Assets</a></li>
                                <li><a href="#">Investor Relations</a></li>
                                <li><a href="#">Terms of Service</a></li>
                            </ul>								
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Features</h4>
                            <ul>
                                <li><a href="#">Jobs</a></li>
                                <li><a href="#">Brand Assets</a></li>
                                <li><a href="#">Investor Relations</a></li>
                                <li><a href="#">Terms of Service</a></li>
                            </ul>								
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Resources</h4>
                            <ul>
                                <li><a href="#">Guides</a></li>
                                <li><a href="#">Research</a></li>
                                <li><a href="#">Experts</a></li>
                                <li><a href="#">Agencies</a></li>
                            </ul>								
                        </div>
                    </div>																		
                    <div class="col-lg-4  col-md-6 col-sm-6">
                        <div class="single-footer-widget">
                            <h4>Newsletter</h4>
                            <p>Stay update with our latest</p>
                            <div class="" id="mc_embed_signup">
                                <form target="_blank" action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01" method="get">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="EMAIL" placeholder="Enter Email Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter Email Address '" required="" type="email">
                                        <div class="input-group-btn">
                                            <button class="btn btn-default" type="submit">
                                                <span class="lnr lnr-arrow-right"></span>
                                            </button>    
                                        </div>
                                        <div class="info"></div>  
                                    </div>
                                </form> 
                            </div>
                        </div>
                    </div>											
                </div>
                <div class="footer-bottom row align-items-center justify-content-between">
                    <p class="footer-text m-0 col-lg-6 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    <div class="col-lg-6 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>						
            </div>
        </footer>	
        <!-- End footer Area -->	

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="js/vendor/bootstrap.min.js"></script>			
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
        <script src="js/easing.min.js"></script>			
        <script src="js/hoverIntent.js"></script>
        <script src="js/superfish.min.js"></script>	
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>	
        <script src="js/jquery.tabs.min.js"></script>						
        <script src="js/jquery.nice-select.min.js"></script>	
        <script src="js/owl.carousel.min.js"></script>									
        <script src="js/mail-script.js"></script>	
        <script src="js/main.js"></script>

        <script>
                            function showHeart(index) {
                                var hearts = document.querySelectorAll('.heart');
                                hearts[index].style.display = 'inline-block'; /* Hiển thị trái tim tương ứng với chỉ mục */
                            }
        </script>
    </body>
</html>
