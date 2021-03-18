<?php
require "../../Admin/session.php";
include "../../Admin/DB Operations/TrainerOps.php";
include "../../Admin/Model/Trainermodel.php";
include "../../Admin/navbar.php";
include "../../Admin/DB Operations/CoursesOps.php";
include "../../Admin/Model/Coursesmodel.php";
?>
<html>
    <head>
        <title>Trainers at DharwadHubballiTutor</title>
        <link rel=stylesheet href="../css/dharwadhubballitutoradmin.css " />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous" />
        <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
        <style>
        .form-check-label {
            color: white;
        }
       
         #trainerslist_length{
             float: left;
             width: 50%;
             display: inline;
             margin-left:100px;
         }
        </style>
    </head>

    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <h3 style="color:#2a0a5e">Trainers at DharwadHubballiTutor</h3> </br>
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-newtrainer-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-newtrainer" type="button" role="tab"
                                aria-controls="pills-newtrainer" aria-selected="true">New Trainer</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link " id="pills-trainers-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-trainers" type="button" role="tab" aria-controls="pills-trainers"
                                aria-selected="false">Trainers list</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-newtrainer" role="tabpanel"
                            aria-labelledby="pills-newtrainer-tab">
                            <form class="form-horizontal" action="../Controller/newtrainer.php" method="POST" role="form"
                                enctype="multipart/form-data">
                                <br>
                                <h2 style="color:#f8c000">NEW TRAINER DETAILS</h2>
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label for="name" class="col-md-6 control-label">Name</label>
                                        <div class="col-sm-12">
                                            <input type="text" id="name" placeholder="Full Name" name="name"
                                                class="form-control" pattern="[a-zA-Z\-\ ]+" required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="phone" class="col-md-6 control-label">Phone</label>
                                        <div class="col-sm-12">
                                            <input type="tel" id="phone" placeholder="Phone" name="phone"
                                                class="form-control" required>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-md-6">
                                        <label for="email" class="col-md-6 control-label">Email</label>
                                        <div class="col-sm-12">
                                            <input type="email" id="email" placeholder="Email" name="email"
                                                class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$"
                                                required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="qualification" class="col-md-6 control-label">Qualification</label>
                                        <div class="col-sm-12">
                                            <input type="text" id="qualification" name="qualification"
                                                placeholder="Your Qualification" class="form-control"
                                                pattern="[A-Za-z]+" required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="coursesassigned" class="col-md-6 control-label"
                                            name="coursesassigned">Courses Assigned</label>
                                            <div class="col-md-12">
                                             <select class="form-select" multiple aria-label="multiple select example" id="coursesassigned" name="coursesassigned[]">
                                                 <option value=''>-----SELECT-----</option>
                                                <?php  
                                                   
                                                    $courselist=DBcourse::selectcourse();
                                                    foreach($courselist as $clist) 
                                                    {
                                                      echo "<option value='".$clist->get_id()."'>".$clist->get_cname()."</option>"; 
                                                    }
                                                 
                                                ?>
                                             </select>
                                            </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="address" class="col-md-6 control-label">Address</label>
                                        <div class="col-sm-12">
                                            <input type="address" id="address" name="address"
                                                placeholder="Residential Address" class="form-control" required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="adhaarno" class="col-md-6 control-label">Adhaar Number</label>
                                        <div class="col-sm-12">
                                            <input type="text" id="adhaarno" name="adhaarno"
                                                placeholder="Your Adhaar Number" class="form-control"
                                                pattern="[0-9]{4}[0-9]{4}[0-9]{4}" required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="adhaarfile" class=" col-md-6 form-label">Upload Adhaar</label>
                                        <div class="col-sm-12">

                                            <input type="file" name="adhaarfile" id="adhaarfile" class="form-control">

                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="photofile" class=" col-md-6 form-label">Upload Photo</label>
                                        <div class="col-sm-12">
                                            <input class="form-control" type="file" name="photofile" id="photofile"
                                                required>
                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="resume" class=" col-md-6 form-label">Upload Resume</label>
                                        <div class="col-sm-12">
                                            <input class="form-control" type="file" name="resume" id="resume"
                                                required>
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
                      
                        <div class="tab-pane fade" id="pills-trainers" role="tabpanel"
                               aria-labelledby="pills-trainers-tab">
                         <table class="enquiries center" id="trainerslist"> 
                            <thead>
                            <tr>
                                <th> Id</th>
                                <th>Name</th>
                                <th>Phone</th>
                                <th>Email</th>
                                <th>Qualification</th>
                               
                                <th>AdhaarNo</th>
                                <th> Action</th>
                            </tr>
                            </thead>
                            <?php       
                               echo  "<tbody>";
                                $trainerslist= DBtrainer::searchtrainer();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                                foreach($trainerslist as $trainer) 
                                {
                                    echo "<tr><td> "  . $trainer->get_id(). "</td><td>"  . $trainer->get_name(). "</td><td>". $trainer->get_phone(). "</td><td>" .$trainer->get_email(). "</td><td>". $trainer->get_qualification(). "</td><td>" . $trainer->get_adhaarno(). "</td><td>" .'<a class="btn btn-danger" href="../View/viewtrainer.php?id='.$trainer->get_id().'&photofile='.$trainer->get_photofile().'" role="button">View </a>'.'</td></tr>' ;
                                }
                                 echo  "</tbody>";
                            ?>
                         </table>
                        
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
         <script type="text/javascript" src="DataTables/datatables.min.js"></script>
         <script>
       
        var trainerslist = $('#trainerslist').DataTable();
             $('#column3_search').on('keyup', function() {
            
            trainerslist.columns(0).search(this.value).draw();
             });

            $(document).ready(function(){
            $("[type=search]").addClass("form-control").attr("placeholder","Type to search...").attr("style","margin-left:50px");
            $("select").addClass("form-select").attr("aria-label","Default select example");
        });
        </script>
    </body>

</html>