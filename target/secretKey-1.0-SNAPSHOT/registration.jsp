<!DOCTYPE html>
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
        <!--<link rel="stylesheet" href="assets/css/registration.css">-->

    </head>

    <!-- Page Navbar -->
    <%@include  file="WEB-INF/navigationbar.jspf" %>
    <!-- End of Page Navbar -->

    <!-- page header -->
    <header id="home" class="header">

        <div class="header-content container">
            <h1 class="header-title">

                <body>

                    <div class="loginbox">

                        <form action="receiver.jsp" >
                            <h1>Registration </h1>

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

                        </form>


                    </div>

                </body>
            </h1>

        </div>              
    </header><!-- end of page header -->

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
