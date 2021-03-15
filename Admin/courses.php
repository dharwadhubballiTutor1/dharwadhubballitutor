<?php  
require "session.php";
include "../Admin/DB Operations/CoursesOps.php";
require "../Admin/Model/Coursesmodel.php";
include "../Admin/navbar.php";
       ?>
<html>

    <head>
        <title>Courses </title>
        <link rel=stylesheet href="../Admin/css/dharwadhubballitutoradmin.css " />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous" />
        <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
    </head>

    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                  <h2 style=color:#2a0a5e>Courses available at DharwadHubballiTutor</h2>
                  <table id=enquiries>
                                <tr cellspacing="0">

                                    <th>CName</th>
                                    <th>Ctype</th>
                                    <th>Cduration</th>
                                    
                                </tr>
                                <?php 
    
    $courseslist=DBcourse::selectall();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
     foreach($courseslist as $course) 
     {
        echo "<tr><td> "  . $course->get_id(). "</td><td>"  . $course->get_cname(). "</td><td>". $course->get_ctype(). "</td><td>" .$course->get_cduration(). '</td></tr>' ;
     }
     ?>
                            </table>
                </div>
              </div>
         </div>