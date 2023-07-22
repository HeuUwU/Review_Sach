<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html class="no-js" lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Product List | Nalika - Material Admin Template</title>
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
        <link rel="stylesheet" href="css2/morrisjs2/morris.css">
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
                            <li><a title="Product Edit" href="category"><span class="mini-sub-pro">Comment Lists</span></a></li>
                        </ul>
                    </nav>
                </div>
            </nav>
        </div>
        <!-- Start Welcome area -->
        <div class="all-content-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                        <div class="logo-pro">
                            <a href="index.html"><img class="main-logo" src="img/logo/logo.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="product-status mg-b-30">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="product-status-wrap">
                                <h4>Customer List</h4>
                                <!--                                    <div class="add-product">
                                                                        <a href="product-edit.html">Add Product</a>
                                                                    </div>-->
                                <table>
                                    <tr>
                                        <th>CommentId</th>
                                        <th>Content</th>
                                        <th>ProductId</th>
                                        <th>CustomeId</th>
                                        <th>Rating</th>
                                        <th>Status</th>
                                    </tr>
                                    <c:forEach items="${commentList}" var="item">
                                        <tr>

                                            <td>${item.getComId()}</td>
                                            <td>${item.getContent()}</td>
                                            <td>${item.getProId()}</td>
                                            <td>${item.getCusId()}</td>
                                            <td>${item.getRating()}</td>
                                            <td>
                                                <a href="viewComment?id=${item.getComId()}&status=${item.getName() != null ? item.getName() : 'null'}"
                                                   class="${item.getName() != null ? 'pd-setting' : 'ds-setting'}"
                                                   onclick="toggleStatus(this, ${item.getName()})">
                                                    <c:choose>
                                                        <c:when test="${not empty item.getName()}">
                                                            <i class="fa-solid fa-lock-open"></i>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <i class="fa-solid fa-lock"></i>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </a>
                                                <form action="viewComment" method="post">
                                                    <input type="hidden" name="id" value="${item.getComId()}">
                                                    <input type="hidden" name="status" value="${item.getName() != null ? item.getName() : 'null'}">
                                                    <input type="hidden" name="delete" value="1">
                                                    <button type="submit">Delete</button>
                                                </form>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </table>
                                <div class="custom-pagination">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                                    </ul>
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
        <!-- plugins JS
                    ============================================ -->
        <script src="js2/plugins.js"></script>
        <!-- main JS
                    ============================================ -->
        <script src="js2/main.js"></script>

    </body>

</html>