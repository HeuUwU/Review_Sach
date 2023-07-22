<%-- 
    Document   : Login
    Created on : Feb 26, 2023, 9:48:06 PM
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->



<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            html,body{
                background-image:linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("Anh/Login.png");
                background-size: cover;
                background-repeat: no-repeat;
                height: 100%;
                font-family: 'Numans', sans-serif;
            }

            .container{
                height: 100%;
                align-content: center;
            }

            .card{
                height: 630px;
                margin-top: auto;
                margin-bottom: auto;
                width: 400px;
                background-color: rgba(0,0,0,0.5) !important;
            }

            .social_icon span{
                font-size: 60px;
                margin-left: 10px;
                color: #009688;
            }

            .social_icon span:hover{
                color: white;
                cursor: pointer;
            }

            .card-header h3{
                color: white;
            }

            .social_icon{
                position: absolute;
                right: 20px;
                top: -45px;
            }

            .input-group-prepend span{
                width: 50px;
                background-color: #009688;
                color: black;
                border:0 !important;
            }

            input:focus{
                outline: 0 0 0 0  !important;
                box-shadow: 0 0 0 0 !important;

            }

            .remember{
                color: white;
            }

            .remember input
            {
                width: 20px;
                height: 20px;
                margin-left: 15px;
                margin-right: 5px;
            }

            .login_btn{
                color: black;
                background-color: #009688;
                width: 100px;
            }

            .login_btn:hover{
                color: black;
                background-color: white;
            }

            .links{
                color: white;
            }

            .links a{
                margin-left: 4px;
            }
            .last{
                margin-top: 15px;
            }
            .text-danger{
                padding-left: 20px;
                margin-bottom: 0px;
            }
        </style>

    </head>
    <body>
        <div class="container">
            <div class="d-flex justify-content-center h-100">
                <div class="card">
                    <div class="card-header">
                        <h3>Sign Up</h3>
                    </div>
                    <p class="text-danger">${mess}</p>
                    <div class="card-body">
                        <form action="signup" method="post">                               
                            <!-- Ma so sinh vien -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-solid fa-file"></i></i></span>
                                </div>
                                <input name="code" type="text" class="form-control" placeholder="Ma so sinh vien">
                            </div>

                            <!-- Ho va ten sinh vien -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-solid fa-signature"></i></span>
                                </div>
                                <input name="name" type="text" class="form-control" placeholder="Ho va ten sinh vien">
                            </div>

                            <!-- So dien thoai -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-solid fa-phone"></i></span>
                                </div>
                                <input name="phone" type="number" class="form-control" placeholder="So dien thoai">
                            </div>

                            <!-- Dia chi -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fa-solid fa-map-location-dot"></i></span>
                                </div>
                                <input name="address" type="text" class="form-control" placeholder="Dia chi">
                            </div>

                            <!-- UserName -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                </div>
                                <input name="account" type="text" class="form-control" placeholder="username">
                            </div>

                            <!-- password -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input name="password" type="password" class="form-control" placeholder="password">
                            </div>

                            <!-- repeat password -->
                            <div class="input-group form-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-key"></i></span>
                                </div>
                                <input name="re_password" type="password" class="form-control" placeholder="repeat your password">
                            </div>
                            <div class="row align-items-center remember">
                                <input type="checkbox">I agree all statements in<ins>Terms of service</ins>
                            </div>
                            <div class="form-group last">
                                <input type="submit" value="Register" class="btn float-right login_btn">
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <div class="d-flex justify-content-center links">
                            Already a member?<a href="login">Sign In</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
