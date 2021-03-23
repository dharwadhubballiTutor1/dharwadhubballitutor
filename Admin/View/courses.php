<?php  
require "../../Admin/session.php";
include "../../Admin/DB Operations/CoursesOps.php";
// require "../../Admin/Model/Coursesmodel.php";
include "../../Admin/navbar.php";
       ?>
<html>

    <head>
        <title>Courses </title>
        <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css " />
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
                  <ul class="nav nav-pills mb-2" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-courses-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-courses" type="button" role="tab" aria-controls="pills-courses"
                                aria-selected="true">Courses list</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link " id="pills-newcourse-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-newcourse" type="button" role="tab"
                                aria-controls="pills-newcourse" aria-selected="false">New Couses</button>
                        </li>
                       
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-courses" role="tabpanel"
                          aria-labelledby="pills-courses-tab">
                         
                          <table class="enquiries center">
                                <tr cellspacing="0">
                                <th>id</th>
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
                        <div class="tab-pane fade"  id="pills-newcourse" role="tabpanel"
                            aria-labelledby="pills-newcourse-tab">
                            <form class="form-horizontal" action="../Controller/newcourse.php" method="POST" role="form"
                                enctype="multipart/form-data">
                                <br>
                                <h2 style="color:#f8c000">New Course Details</h2>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label for="cname" class="col-md-6 control-label">Name</label>
                                        <div class="col-sm-12">
                                            <input type="text" id="cname" placeholder="Full Name" name="cname"
                                                class="form-control" pattern="[a-zA-Z\-\ ]+" required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="ctype" class="col-md-6 control-label">Course type</label>
                                            <div class="col-md-12">
                                                <div class="col-md-4 form-check-inline">
                                                    <input class="form-check-input" type="radio" name="ctype" id="ctype" value="Online">
                                                    <label class="form-check-label" for="ctype">Online</label>
                                                </div>
                                                <div class="col-md-6 form-check-inline">
                                                    <input class="form-check-input" type="radio" name="ctype" id="ctype" value="Classroom Training">
                                                    <label class="form-check-label" for="ctype">Classroom Training</label>
                                                </div>
                                            </div>
                                    </div>
                                    <br />
                                    <div class="col-md-6">
                                        <label for="cduration" class="col-md-6 control-label">Course Duration</label>
                                        <div class="col-sm-12">
                                            <input type="text" id="cduration" placeholder="Duration" name="cduration"
                                                class="form-control" required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="form-group">
                                        <div class="col-sm-12 " style=text-align:center>
                                            <button type="submit" class="btn btn-warning">Register</button>
                                        </div>
                                    </div>
                                   
                                </div>
                            </form>
                         </div>


                    </div>
                </div>
            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"
            integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"
            integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous">
        </script>
    </body>
</html>