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
            .limited-words {
                display: -webkit-box;
                -webkit-box-orient: vertical;
                -webkit-line-clamp: 5; /* Số từ tối đa cần giới hạn */
                overflow: hidden;
                text-overflow: ellipsis;
            }
            .flex-container {
                display: flex;
                align-items: center;
            }
            .single-popular-carusel .thumb-wrap .thumb {
                width: 300px; /* Đặt kích thước chiều rộng của ảnh là 300px */
                height: 200px; /* Đặt kích thước chiều cao của ảnh là 200px */
                overflow: hidden; /* Ẩn phần vượt quá kích thước của ảnh */
                margin-right: 30px;
            }

            .single-popular-carusel .thumb-wrap .thumb img {
                width: 100%; /* Đảm bảo ảnh chiếm toàn bộ không gian bên trong phần tử .thumb */
                height: auto; /* Đặt chiều cao tự động để duy trì tỉ lệ hình ảnh */
                object-fit: cover; /* Đảm bảo ảnh không bị biến dạng và điều chỉnh để vừa với kích thước */
            }

            .single-popular-carusel .details {
                flex-grow: 1; /* Đảm bảo phần tử .details mở rộng để điền vào không gian trống */
            }

            .single-popular-carusel .details a {
                display: block; /* Cho phép văn bản và phần tử con bên trong .details có thể nhận được các sự kiện liên quan đến việc nhấp chuột */
                margin-bottom: 10px; /* Khoảng cách giữa tiêu đề và nội dung */
            }

            .single-popular-carusel .details h4 {
                margin: 0; /* Xóa khoảng cách xung quanh tiêu đề */
            }

            .single-popular-carusel .details p.limited-words {
                margin-bottom: 10px; /* Khoảng cách giữa nội dung và các phần tử khác */
            }
            .pagination {
                margin-top: 20px;
                text-align: center;
            }

            .pagination a {
                display: inline-block;
                margin: 0 5px;
                padding: 5px 10px;
                background-color: #f1f1f1;
                color: #333;
                text-decoration: none;
                border-radius: 3px;
            }

            .pagination a:hover {
                background-color: #ddd;
            }

            .pagination .active {
                background-color: #333;
                color: #fff;
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
                        <a href="Home.jsp"><img src="img/logo.png" alt="" title="" /></a>
                    </div>
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li><a href="home">Home</a></li>
                            <li><a href="About.jsp">About</a></li>
                            <li><a href="Review_Book.jsp">Review Book</a></li>				          					          		          
                            <li><a href="contact.html">Contact</a></li>
                            <li><a href="SignIn.jsp">Login</a></li>
                            <li><a href="contact.html">Register</a></li>
                        </ul>
                    </nav><!-- #nav-menu-container -->		    		
                </div>
            </div>
        </header><!-- #header -->

        <!-- start banner Area -->
        <section class="banner-area relative about-banner" id="home">	
            <div class="overlay overlay-bg"></div>
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                            Review Book		
                        </h1>	
                        <p class="text-white link-nav"><a href="index.html">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="courses.html"> Review Book</a></p>
                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->	

        <!-- Start popular-courses Area --> 
        <section class="popular-courses-area section-gap courses-page">
            <div class="container">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Newest Books we just update</h1>
                            <p>There is a moment in the life of any aspiring.</p>
                        </div>
                    </div>
                </div>						
                <div class="row">
                    <div class="single-popular-carusel">
                        <c:forEach items="${all}" var="item">
                            <div class="single-popular-carusel item">
                                <div class="flex-container">
                                    <div class="thumb-wrap relative">
                                        <div class="thumb relative">
                                            <a href="bookDetail?id=${item.getProId()}">
                                                <img class="img-fluid" src="img/book/${item.getImage()}">
                                            </a>
                                        </div>
                                        <div class="meta d-flex justify-content-between">
                                            <p><span class="lnr lnr-users"></span> ${item.getView()}</p>
                                        </div>
                                    </div>
                                    <div class="details">
                                        <a href="bookDetail?id=${item.getProId()}">
                                            <h4>${item.getName()}</h4>
                                        </a>
                                        <p class="limited-words">${item.getContent()}</p>
                                        <div class="meta d-flex justify-content-between">
                                            <p><span class="lnr lnr-users"></span>${item.getView()}</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>


                    </div>
                    <div class="pagination" id="pagination"></div>

                </div>
            </div>	
        </section>
        <!-- End popular-courses Area -->															    			

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

        <!--        <script>
                                    // Định nghĩa một biến để lưu trữ dữ liệu sách
                                    var booksData = ${all};
        
                                    // Định nghĩa số lượng sách hiển thị ban đầu và số lượng sách được hiển thị khi nhấp vào "Load More"
                                    var initialDisplayCount = 9;
                                    var displayCountIncrement = 3;
        
                                    // Hiển thị sách ban đầu
                                    displayBooks(initialDisplayCount);
        
                                    // Xử lý sự kiện khi nhấp vào "Load More"
                                    document.getElementById("loadMoreButton").addEventListener("click", function () {
                                        // Tăng số lượng sách được hiển thị lên
                                        initialDisplayCount += displayCountIncrement;
                                        // Hiển thị lại sách
                                        displayBooks(initialDisplayCount);
                                    });
        
                                    // Hàm để hiển thị sách
                                    function displayBooks(displayCount) {
                                        var carousel = document.getElementById("carousel");
                                        carousel.innerHTML = ""; // Xóa nội dung hiện tại của carousel
        
                                        // Lặp qua số lượng sách cần hiển thị và tạo các phần tử HTML tương ứng
                                        for (var i = 0; i < displayCount && i < booksData.length; i++) {
                                            var book = booksData[i];
        
                                            var bookElement = document.createElement("div");
                                            bookElement.className = "single-popular-carusel";
                                            // ... Tiếp tục tạo các phần tử HTML và đặt giá trị cho chúng
        
                                            carousel.appendChild(bookElement);
                                        }
        
                                        // Kiểm tra nếu đã hiển thị hết tất cả sách, ẩn "Load More" button
                                        if (displayCount >= booksData.length) {
                                            document.getElementById("loadMoreButton").style.display = "none";
                                        }
                                    }
                </script>-->
        <script>
// Lấy danh sách các mục
                            var items = document.querySelectorAll('.single-popular-carusel.item');

// Số mục trên mỗi trang
                            var itemsPerPage = 8;

// Tạo các trang
                            var totalPages = Math.ceil(items.length / itemsPerPage);

// Hiển thị mục cho trang hiện tại
                            function showItems(page) {
                                var startIndex = (page - 1) * itemsPerPage;
                                var endIndex = Math.min(startIndex + itemsPerPage, items.length);

                                for (var i = 0; i < items.length; i++) {
                                    if (i >= startIndex && i < endIndex) {
                                        items[i].style.display = 'block';
                                    } else {
                                        items[i].style.display = 'none';
                                    }
                                }
                            }

// Hiển thị phân trang
                            function showPagination() {
                                var pagination = document.getElementById('pagination');
                                pagination.innerHTML = '';

                                for (var i = 1; i <= totalPages; i++) {
                                    var link = document.createElement('a');
                                    link.href = 'javascript:void(0)';
                                    link.textContent = i;

                                    // Gán sự kiện click cho link
                                    link.addEventListener('click', function (page) {
                                        return function () {
                                            showItems(page);
                                        };
                                    }(i));

                                    pagination.appendChild(link);
                                }
                            }

// Hiển thị trang đầu tiên
                            showItems(1);

// Hiển thị phân trang
                            showPagination();
        </script>
    </body>
</html>