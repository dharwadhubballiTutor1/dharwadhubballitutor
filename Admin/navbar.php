<?php 

// require "session.php";?>
<!DOCTYPE html>

<html>

    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel=stylesheet href="../Admin/css/dharwadhubballitutoradmin.css " />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
        <style>
        body {
            font-family: "Lato", sans-serif;
        }

        .btn-danger {
            background-color: #2a0a5e !important;
            color: #f8c000 !important;
            border-color: #2a0a5e !important;
        }

        .sidenav {
            height: 100%;
            width: 220px;
            position: fixed;
            z-index: 1;
            top: 0%;
            left: 0;
            background-color: #2a0a5e;
            overflow-x: hidden;
            padding-top: 20px;
        }

        .sidenav a {
            padding: 6px 6px 6px 32px;
            text-decoration: none;
            font-size: 20px;
            color: #f8c000;
            display: block;
        }

        .sidenav a:hover {
            color: black;
            background-color: #f8c000;
        }

        .sidenav a:active {
            background-color: #f8c000;
        }

        .sidebar-menu ul li a {
            display: inline-block;
            width: 100%;
            text-decoration: none;
            position: relative;
            padding: 8px 30px 8px 20px;
        }

        .sidebar-wrapper .sidebar-menu ul li a i {
            margin-right: 15px;
            font-size: 12px;
            width: 30px;
            height: 30px;
            line-height: 30px;
            text-align: center;
            border-radius: 4px;
        }

        .sidebar-wrapper .sidebar-menu ul li a:hover>i::before {
            display: inline-block;
            animation: swing ease-in-out 0.5s 1 alternate;
        }

        @media screen and (max-height: 450px) {
            .sidenav {
                padding-top: 15px;
            }

            .sidenav a {
                font-size: 18px;
            }
        }

        .user-info {
            color: #f8c000;
            font-size: 18px;
            text-align: center;
        }

        .brandName {
            color: #f8c000;
            font-size: 20px;
        }

        .img-responsive {
            margin-left: auto;
            margin-right: auto;
            display: block;
        }

        .sidebar-footer {
            position: absolute;
            width: 100%;
            bottom: 0;


        }

        .sidebar-footer>a {
            flex-grow: 1;
            text-align: center;
            height: 10;
            line-height: 10px;

        }
        </style>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-1">

                    <div class="sidenav">
                        <h3 class="navbar-brand brandName">DharwadHubballiTutor</h3> <br>
                        <div class="sidebar-header">
                            <div class="user-pic">
                                <img class="img-responsive rounded-circle mx-auto d-block"
                                    style="text-align:center; width:100px; height:100px" src="../../Admin/admin.png"
                                    alt="User picture">
                            </div>
                            <div class="user-info">
                                <span class="user-role">Administrator</span>
                            </div>
                        </div>
                        <hr>
                        <div class="sidebar-menu">

                            <a href="../enquiries.php"> <i class="fas fa-search-plus"></i> <span> Enquiries</span></a>
                            <a href="../admissions.php"> <i class="fa fa-graduation-cap" aria-hidden="true"></i> <span>
                                    Admissions </span></a>
                            <a href="../trainers.php"><i class="fas fa-user-circle" aria-hidden="true"></i> <span> Trainers
                                </span></a>
                                <a href="courses.php"> <i class="fa fa-book"></i> <span> Courses</span></a>
                        </div>
                        <a type="button" href="../logout.php"><i class="fa fa-power-off"></i> Log Out</a>
                    </div>
                </div>
                <div class="col-md-11"></div>
            </div>
        </div>

    </body>

</html>