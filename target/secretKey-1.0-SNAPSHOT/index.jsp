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
    </head>
    <body onload="openNavBar()" data-spy="scroll" data-target=".navbar" data-offset="40" id="home"    
         <!-- Page Navbar -->
<nav class="custom-navbar" data-spy="affix" data-offset-top="20">
    <div class="container">
        <a class="logo" href="#"></a>         
        <ul class="nav">
            <li class="item ml-md-3">
                <a href="#home" class="btn btn-primary">Home</a>
            </li>
            <li class="item ml-md-3">
                <a  href="senderLogin.jsp" class="btn btn-primary">Sender</a>
            </li>
            <li class="item ml-md-3">
                <a  href="receiverLogin.jsp" class="btn btn-primary">Receiver</a>
            </li>
            <li class="item ml-md-3">
                <a  href="authorize.jsp" class="btn btn-primary">Authorize</a>
            </li>
            <li class="item ml-md-3">
                <a  href="registration.jsp" class="btn btn-primary">Registration</a>
            </li>
            
        </ul>
        <a href="javascript:void(0)" id="nav-toggle" class="hamburger hamburger--elastic">
            <div class="hamburger-box">
                <div class="hamburger-inner"></div>
            </div>
        </a>
    </div>          
</nav><!-- End of Page Navbar -->

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

    <!-- End of Page Navbar -->

        <!-- page header -->
        <header id="home" class="header">

            <div class="header-content container">
                <h1 class="header-title">
                    <span class="up">
                        Blockchain Enabled Cyber Security:</span>
                    <span class="down"><h2>A Comprehensive Survey</h2></span>
                </h1>
                <span class="item ml-md-3">
                    <a href="abstract.jsp" class="btn btn-primary">View Abstract</a>
                </span>
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
