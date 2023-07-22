<%-- 
    Document   : Book_Detail
    Created on : Jun 10, 2023, 8:03:26 AM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx" class="no-js">
    <head>
        <style>
            .profile-image {
                width: 200px;
                height: 200px;
                border-radius: 50%;
                cursor: pointer;
            }

            /* Modal styles */
            .modal {
                display: none;
                position: fixed;
                z-index: 999;
                padding-top: 50px;
                left: 0;
                top: 0;
                width: 100%;
                height: 100%;
                overflow: auto;
                background-color: rgb(0, 0, 0);
                background-color: rgba(0, 0, 0, 0.9);
            }

            .modal-content {
                margin: auto;
                display: block;
                width: 70%; /* Kích thước cửa sổ modal */
                max-width: 500px;
            }

            .modal-image {
                width: 100%;
                height: auto;
            }

            .close {
                position: absolute;
                top: 10px;
                right: 10px;
                color: #fff;
                font-size: 30px;
                font-weight: bold;
                transition: 0.3s;
            }

            .close:hover,
            .close:focus {
                color: #bbb;
                text-decoration: none;
                cursor: pointer;
            }

            /**************************************************************************************************/

            .checked {
                color: #f7631b; /* Màu cam */
            }
            .user-item {
                display: flex;
                margin-top: 20px;
            }

            .thumb {
                flex: 0 0 auto;
            }

            .desc {
                flex: 1;
                margin-left: 10px;
            }

            .comment-content {
                order: 1;
            }

            .rating {
                order: 2;
                margin-bottom: 20px;
            }
            p.excert {
                text-indent: 2em; /* Lùi đầu dòng 2em (tùy chỉnh theo ý muốn) */
            }
        </style>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
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

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />


        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
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
                        </ul>
                    </nav>		    		
                </div>
            </div>
        </header><!-- #header -->
        <!-- start banner Area -->
        <section class="banner-area relative" id="home">	
            <div class="overlay overlay-bg"></div>
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            Book Details Page				
                        </h1>	
                        <p class="text-white link-nav"><a href="home">Home </a>  <span class="lnr lnr-arrow-right"></span><a href="reviewBook">Review Book </a> <span class="lnr lnr-arrow-right"></span> <a href="blog-single.html"> Book Details</a></p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->					  

        <!-- Start post-content Area -->
        <section class="post-content-area single-post-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 posts-list">
                        <div class="single-post row">
                            <c:forEach items="${detail}" var="item">
                                <div class="col-lg-12">
                                    <div class="feature-img">
                                        <img class="img-fluid" src="img/book/${item.getImage()}" alt="">
                                    </div>									
                                </div>
                                <div class="col-lg-3  col-md-3 meta-details">
                                    <ul class="tags">
                                        <li><a href="#">Food,</a></li>
                                        <li><a href="#">Technology,</a></li>
                                        <li><a href="#">Politics,</a></li>
                                        <li><a href="#">Lifestyle</a></li>
                                    </ul>

                                    <div class="user-details row">
                                        <p class="user-name col-lg-12 col-md-12 col-6"><a href="#">MaNguCaDe GandHeu</a> <span class="lnr lnr-user"></span></p>
                                        <p class="view col-lg-12 col-md-12 col-6"><a href="#">${item.getView()} Views</a> <span class="lnr lnr-eye"></span></p>
                                        <p class="comments col-lg-12 col-md-12 col-6"><a href="#">${comment} Comments</a> <span class="lnr lnr-bubble"></span></p>
                                        <ul class="social-links col-lg-12 col-md-12 col-6">
                                            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                            <li><a href="#"><i class="fa fa-github"></i></a></li>
                                            <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        </ul>																				
                                    </div>
                                </div>
                                <div class="col-lg-9 col-md-9">
                                    <h3 class="mt-20 mb-20">${item.getName()}</h3>
                                    <p class="excert">
                                        ${item.getContent()}
<!--                                        <img class="img-fluid" src="img/book/${item.getImage()}" alt="Quyen 1">
                                        ${item.getContent()}
                                        <img class="img-fluid" src="img/book/${item.getImage()}" alt="Quyen 2">
                                        ${item.getContent()}
                                        <img class="img-fluid" src="img/book/${item.getImage()}" alt="Quyen 3">
                                        ${item.getContent()}
                                        <img class="img-fluid" src="img/book/${item.getImage()}" alt="Quyen 4">-->
                                    </p>
                                </div>
                            </c:forEach>
                        </div>

                        <div class="comments-area">
                            <h4>${comment} Comments</h4>
                            <div class="comment-list left-padding">
                                <c:forEach items="${customer}" var="item">
                                    <c:if test="${not empty item.getEmId()}">
                                        <div class="single-comment justify-content-between d-flex clearfix">
                                            <div class="user justify-content-between d-flex">
                                                <div class="user-item">
                                                    <div class="thumb">
                                                        <img id="image" src="img/blog/c1.jpg" alt="">
                                                    </div>

                                                    <div class="desc">
                                                        <div class="comment-content">
                                                            <h5><a href="#">${item.getName()}</a></h5>
                                                            <div class="rating">
                                                                <c:forEach begin="1" end="5" var="i">
                                                                    <c:choose>
                                                                        <c:when test="${i <= item.getRating()}">
                                                                            <i class="fas fa-star checked"></i>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <i class="fa-regular fa-star"></i>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </c:forEach>
                                                            </div>
                                                            <p class="comment">
                                                                ${item.getContent()}
                                                            </p>
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>

                        </div>
                        <div class="comment-form">
                            <c:if test="${sessionScope.role != null}">
                                <h4>Leave a Comment</h4>
                                <form action="bookDetail" method="post">
                                    <div class="rating">
                                        <span class="rating-text">Rating: </span>
                                        <span class="stars">
                                            <input type="radio" name="rating" value="1" class="fas fa-star">
                                            <input type="radio" name="rating" value="2" class="fas fa-star">
                                            <input type="radio" name="rating" value="3" class="fas fa-star">
                                            <input type="radio" name="rating" value="4" class="fas fa-star">
                                            <input type="radio" name="rating" value="5" class="fas fa-star">
                                        </span>
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control mb-10" type="text" name="comment" placeholder="Message" required="">
                                    </div>
                                    <button type="submit" class="primary-btn text-uppercase">Post Comment</button>
                                </form>
                            </c:if>
                            <c:if test="${sessionScope.role == null}">
                                <h4>You need to login to comment</h4>
                                <form>
                                    <a href="login" class="primary-btn text-uppercase">Login</a>	
                                </form>
                            </c:if>
                        </div>
                    </div>
                    <div class="col-lg-4 sidebar-widgets">
                        <div class="widget-wrap">
                            <div class="single-sidebar-widget user-info-widget">
                                <img id="profile-image" src="img/Employees/Heu.jpg" class="profile-image" onclick="displayModal()">
                                <div id="modal" class="modal">
                                    <div class="modal-content">
                                        <span class="close" onclick="closeModal()">&times;</span>
                                        <img id="modal-image" src="" class="modal-image">
                                    </div>
                                </div>
                                <a href="#"><h4>MaNguCaDe Gandhieu</h4></a>
                                <p>
                                    God book writer
                                </p>
                                <ul class="social-links">
                                    <li><a href="https://www.facebook.com/profile.php?id=100017892760359"><i class="fa fa-facebook"></i></a></li>
                                    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fa fa-github"></i></a></li>
                                    <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                </ul>
                                <p>
                                    In the realm of boundless creativity, words become the brushstrokes that paint captivating tales. A writer's pen dances upon the page, crafting stories that enchant and inspire. Through their words, worlds unfold, characters breathe, and emotions resonate. The power of storytelling lies in their hands, shaping narratives that leave an indelible mark on the reader's heart.                                </p>
                            </div>



                            <div class="single-sidebar-widget popular-post-widget">
                                <h4 class="popular-title">Popular Books</h4>
                                <c:forEach items="${data}" var="item" varStatus="loop">
                                    <c:if test="${loop.index < 3}">
                                        <div class="popular-post-list">
                                            <div class="single-post-list d-flex flex-row align-items-center">
                                                <div class="thumb">
                                                    <a href="bookDetail?id=${item.getProId()}">
                                                        <img class="img-fluid" src="img/book/${item.getImage()}" style="width: 150px; height: 100px;">
                                                    </a>
                                                </div>
                                                <div class="details">
                                                    <a href="bookDetail?id=${item.getProId()}"><h6>${item.getName()}</h6></a>
                                                    <p>${item.getView()} Views</p>
                                                </div>
                                            </div>															
                                        </div>
                                    </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	
        </section>
        <!-- End post-content Area -->

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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

        <script>
                            var profileImage = document.getElementById("profile-image");
                            var modal = document.getElementById("modal");
                            var modalImage = document.getElementById("modal-image");

                            profileImage.addEventListener("click", function () {
                                displayModal();
                            });

                            function displayModal() {
                                modal.style.display = "block";
                                modalImage.src = profileImage.src;
                            }

                            function closeModal() {
                                modal.style.display = "none";
                            }
        </script>
        <script>
            $(document).ready(function () {
                $(".rating .fa-star").click(function () {
                    $(this).addClass("checked");
                    $(this).prevAll(".fa-star").addClass("checked");
                    $(this).nextAll(".fa-star").removeClass("checked");
                });
            });
        </script>
        <script>
            const images = ['img/blog/c1.jpg', 'img/blog/c2.jpg', 'img/blog/c3.jpg'];

            function changeImageRandomly() {
                const imageElement = document.getElementById('image');
                const randomIndex = Math.floor(Math.random() * images.length);
                imageElement.src = images[randomIndex];
            }

            changeImageRandomly(); // Thay đổi hình ảnh ngẫu nhiên ban đầu

// Gọi hàm changeImageRandomly() khi bạn muốn thay đổi hình ảnh ngẫu nhiên

        </script>
    </body>
</html>
