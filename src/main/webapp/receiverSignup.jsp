<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with Meyawo landing page.">
        <meta name="author" content="Devcrud">
        <title>block chain </title>
        <!-- font icons -->
        <link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">
        <!-- Bootstrap + Meyawo main styles -->
        <link rel="stylesheet" href="assets/css/meyawo.css">
    </head>
    <body onload="openNavBar()" data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
        <nav class="custom-navbar" data-spy="affix" data-offset-top="20">
            <div class="container">
                <a class="logo" href="#"></a>
                <!-- Page Navbar -->
                <nav class="custom-navbar" data-spy="affix" data-offset-top="20">
                    <div class="container">
                        <a class="logo" href="#"></a>         
                        <ul class="nav">

                            <li class="item ml-md-3">
                                <a href="index.html" class="btn btn-primary">Home</a>
                            </li>
                            <li class="item ml-md-3">
                                <a href="senderLogin.jsp" class="btn btn-primary">Sender</a>
                            </li>
                            <li class="item ml-md-3">
                                <a href="receiverLogin.jsp" class="btn btn-primary">Receiver</a>
                            </li>
                            <li class="item ml-md-3">
                                <a href="logout.jsp" class="btn btn-primary">Logout</a>
                            </li>



                        </ul>
                        <a href="javascript:void(0)" id="nav-toggle" class="hamburger hamburger--elastic">
                            <div class="hamburger-box">
                                <div class="hamburger-inner"></div>
                            </div>
                        </a>
                    </div>          
                </nav><!-- End of Page Navbar -->

                <!-- <a href="javascript:void(0)" id="nav-toggle" class="hamburger hamburger--elastic">
                    <div class="hamburger-box">
                        <div class="hamburger-inner"></div>
                    </div>
                </a> -->
            </div>
        </nav>
        <!-- End of Page Navbar -->


        <!-- page header -->
        <header id="home" class="header">

            <div class="header-content container">
                <h1 class="header-title">

                    <body>

                        <div class="loginbox">

                            <form  >
                                <h1>Signup for Receiver</h1>

                                <div class="row justify-content-md-start">
                                    <div class="col-3 align-self-center">
                                        <p>Name<p>
                                    </div>
                                    <h6><input type="text" name="oname" placeholder="enter ur name">
                                    </h6>
                                </div> 


                                <div class="row justify-content-md-start">
                                    <div class="col-3 align-self-center">


                                        <p>Login ID<p>
                                    </div>
                                    <h6><input type="text" name="oname" placeholder="enter ID">
                                    </h6>
                                </div>

                                <div class="row justify-content-md-start">
                                    <div class="col-3 align-self-center">
                                        <p>Email<p>
                                    </div>
                                    <h6>  <input type="email" name="oemail" placeholder="enter valid Mail"></h6>
                                </div>
                                <div class="row justify-content-md-start">
                                    <div class="col-3 align-self-center">
                                        <p>Contact no<p>
                                    </div>
                                    <h6>   <input type="number" name="omobile" placeholder="enter 10 digit no"></h6>
                                </div>

                                <div class="row justify-content-md-start">
                                    <div class="col-3 align-self-center">
                                        <p>Password<p>
                                    </div>
                                    <h6>    <input type="password" name="opassword" placeholder="enter password"></h6>
                                </div>


                                <div class="row justify-content-md-start">
                                    <div class="col-3 align-self-center">
                                        <p>User type<p>
                                    </div> 

                                    <h5>  <input type="radio"  id="usertype1" name="usertype" > </h5>

                                    <h5>   <label for="usertype1">sender</label></h5> 
                                    <h5>    <input type="radio" id="usertype2" name="usertype"> </h5>
                                    <h5>  <label for="usertype2">receiver</label>  </h5>
                                </div>

                                <input type="submit" value="submit"class="btn btn-primary">
                                <%
                                    String msg = request.getParameter("msg");
                                    if (msg != null && msg.equalsIgnoreCase("success")) {
                                        out.println("<font color='black'>signup Successfull </font>");
                                    } else if (msg != null && msg.equalsIgnoreCase("faild")) {
                                        out.println("<font color='black'>signup failed</font>");
                                    }

                                %>
                            </form>



                        </div>

                    </body>
                </h1>

            </div>              
        </header><!-- end of page header -->
        <script>
            /* Toggle between showing and hiding the navigation menu links when the user clicks on the hamburger menu / bar icon */
            function myFunction() {
                var x = document.getElementById("nav");
                if (x.style.display === "block") {
                    x.style.display = "none";
                } else {
                    x.style.display = "block";
                }
            }
            function openNavBar() {
                var x = document.getElementById("nav-toggle");
                x.click();
            }
        </script>


        <!-- about section -->
        <section class="section pt-0" id="about">
            <!-- container -->


            <!-- core  -->
            <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
            <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

            <!-- bootstrap 3 affix -->
            <script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

            <!-- Meyawo js -->
            <script src="assets/js/meyawo.js"></script>

    </body>
</html>


