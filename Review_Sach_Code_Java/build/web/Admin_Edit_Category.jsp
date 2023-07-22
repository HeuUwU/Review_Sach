<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <style>
            #imagePreview img {
                max-width: 300px;
                max-height: 300px;
            }
            .error-message {
                color: red;
                margin-top: 5px;
            }

        </style>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Product Edit | Admin</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

        <!-- favicon
                    ============================================ -->
        <link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico">
        <!-- Google Fonts
                    ============================================ -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,700,900" rel="stylesheet">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/bootstrap.min.css">
        <!-- Bootstrap CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/font-awesome.min.css">
        <!-- nalika Icon CSS
                ============================================ -->
        <link rel="stylesheet" href="css2/nalika-icon.css">
        <!-- owl.carousel CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/owl.carousel.css">
        <link rel="stylesheet" href="css2/owl.theme.css">
        <link rel="stylesheet" href="css2/owl.transitions.css">
        <!-- animate CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/animate.css">
        <!-- normalize CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/normalize.css">
        <!-- meanmenu icon CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/meanmenu.min.css">
        <!-- main CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/main.css">
        <!-- morrisjs CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/morrisjs/morris.css">
        <!-- mCustomScrollbar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/scrollbar/jquery.mCustomScrollbar.min.css">
        <!-- metisMenu CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/metisMenu/metisMenu.min.css">
        <link rel="stylesheet" href="css2/metisMenu/metisMenu-vertical.css">
        <!-- calendar CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/calendar/fullcalendar.min.css">
        <link rel="stylesheet" href="css2/calendar/fullcalendar.print.min.css">
        <!-- style CSS
                    ============================================ -->
        <link rel="stylesheet" href="style.css">
        <!-- responsive CSS
                    ============================================ -->
        <link rel="stylesheet" href="css2/responsive.css">
        <!-- modernizr JS
                    ============================================ -->
        <script src="js2/vendor/modernizr-2.8.3.min.js"></script>
    </head>

    <body>


        <div class="left-sidebar-pro">
            <nav id="sidebar" class="">
                <div class="sidebar-header">
                    <a href="home"><img class="main-logo" src="img/logo.png" alt="" /></a>
                </div>
                <div class="nalika-profile">
                    <div class="profile-dtl">
                        <a href="#"><img src="img/HeuUwU.png" alt="" /></a>
                        <h2>HeuUwU <span class="min-dtn"></span></h2>
                    </div>
                </div>
                <div class="left-custom-menu-adp-wrap comment-scrollbar">
                    <nav class="sidebar-nav left-sidebar-menu-pro">
                        <ul class="metismenu" id="menu1">
                            <li class="active">
                            <li><a title="Product List" href="customer"><span class="mini-sub-pro">Customer Lists</span></a></li>
                            <li><a title="Product Edit" href="book"><span class="mini-sub-pro">Book Lists</span></a></li> 
                            <li><a title="Product Edit" href="category"><span class="mini-sub-pro">Category Lists</span></a></li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <div class="header-advance-area">
                <div class="breadcome-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="breadcome-list">
                                    <div class="row">
                                        <div class="col-lg-6 col-md-6 col-sm-6 col-xs-6">
                                            <div class="breadcomb-wp">
                                                <div class="breadcomb-icon">
                                                    <i class="fa-solid fa-pen-to-square"></i>
                                                </div>
                                                <div class="breadcomb-ctn">
                                                    <h2>Books Edit</h2>
                                                    <p>You can edit book</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Single pro tab start-->
            <div class="single-product-tab-area mg-b-30">
                <!-- Single pro tab review Start-->
                <div class="single-pro-review-area">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                <div class="review-tab-pro-inner">
                                    <ul id="myTab3" class="tab-review-design">
                                        <li class="active"><a href="#description">Category Edit</a></li>
                                    </ul>
                                    <div id="myTabContent" class="tab-content custom-product-edit">
                                        
                                        <form action="editCategory" method="post">
                                            <div class="product-tab-list tab-pane fade active in" id="description">
                                                <div class="row">
                                                    <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                                        <div class="review-content-section">
                                                            <c:forEach items="${cate}" var="item">
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="fa-solid fa-signature"></i></span>
                                                                    <input name="editID" style="color: black" type="text" class="form-control" value="${item.getCateId()}" readonly>
                                                                </div>
                                                                <div class="input-group mg-b-pro-edt">
                                                                    <span class="input-group-addon"><i class="fa-solid fa-circle-info"></i></span>
                                                                    <input name="editName" type="text" class="form-control" value="${item.getName()}">
                                                                </div>
                                                            </c:forEach>
                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                                        <div class="text-center custom-pro-edt-ds" style="margin-top: 20px">
                                                            <button type="submit" class="btn btn-ctl-bt waves-effect waves-light m-r-10">Save</button>

                                                            <button type="button" class="btn btn-ctl-bt waves-effect waves-light" onclick="window.location.href = 'category'">Return</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form> 
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- jquery
                    ============================================ -->
        <script src="js2/vendor/jquery-1.12.4.min.js"></script>
        <!-- bootstrap JS
                    ============================================ -->
        <script src="js2/bootstrap.min.js"></script>
        <!-- wow JS
                    ============================================ -->
        <script src="js2/wow.min.js"></script>
        <!-- price-slider JS
                    ============================================ -->
        <script src="js2/jquery-price-slider.js"></script>
        <!-- meanmenu JS
                    ============================================ -->
        <script src="js2/jquery.meanmenu.js"></script>
        <!-- owl.carousel JS
                    ============================================ -->
        <script src="js2/owl.carousel.min.js"></script>
        <!-- sticky JS
                    ============================================ -->
        <script src="js2/jquery.sticky.js"></script>
        <!-- scrollUp JS
                    ============================================ -->
        <script src="js2/jquery.scrollUp.min.js"></script>
        <!-- mCustomScrollbar JS
                    ============================================ -->
        <script src="js2/scrollbar/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js2/scrollbar/mCustomScrollbar-active.js"></script>
        <!-- metisMenu JS
                    ============================================ -->
        <script src="js2/metisMenu/metisMenu.min.js"></script>
        <script src="js2/metisMenu/metisMenu-active.js"></script>
        <!-- morrisjs JS
                    ============================================ -->
        <script src="js2/sparkline/jquery.sparkline.min.js"></script>
        <script src="js2/sparkline/jquery.charts-sparkline.js"></script>
        <!-- calendar JS
                    ============================================ -->
        <script src="js2/calendar/moment.min.js"></script>
        <script src="js2/calendar/fullcalendar.min.js"></script>
        <script src="js2/calendar/fullcalendar-active.js"></script>
        <!-- tab JS
                    ============================================ -->
        <script src="js2/tab.js"></script>
        <!-- plugins JS
                    ============================================ -->
        <script src="js2/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="js2/main.js"></script>

    </body>

</html>