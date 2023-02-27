<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.blockchain.db.DbConnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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

        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 70% !important;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
    </head>
    <body onload="openNavBar()" data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

        <!-- Page Navbar -->
        <nav class="custom-navbar" data-spy="affix" data-offset-top="20">
            <div class="container">

                <ul class="nav">

                    <li class="item ml-md-3">
                        <a  href="authorize.jsp" class="btn btn-primary">Back</a>
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
        <!-- page header -->

        <header class="header">

            <div>
                <h6 class="header-title">
                    <span class="up">Blockchain Enabled Cyber Security:</span>
                </h6>
                <span class="down"><h2>A Comprehensive Survey</h2></span>
                <span class="down" ><h4 style="color: black; margin-top: 60px">Activate Sender Request</h4></span>




                <span class="down">
                    <table>
                        <tr>

                            <th>Sender Name</th>
                            <th>Login ID</th>

                            <th>Key Gen</th>    
                            <th>status</th>    

                        </tr>
                      
                    </table>
                </span>
            </div>
        </header><!-- end of page header -->


        <!-- core  -->
        <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
        <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

        <!-- bootstrap 3 affix -->
        <script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

        <!-- Meyawo js -->
        <script src="assets/js/meyawo.js"></script>

    </body>
</html>
