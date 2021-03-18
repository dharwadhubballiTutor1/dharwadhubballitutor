<?php
require "../../Admin/session.php";
include "../../Admin/navbar.php";
require "../../Admin/Utilities/Helper.php";
include "../../Admin/DB Operations/AdmissionsOps.php";
require "../../Admin/Model/Admissionsmodel.php";
require "../../Model/Registration.php";
?>
<html>

    <head>
        <title> Move to Admission</title>
    </head>
    <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css " />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                <h2 class="display-2">Admission</h2>
                    <?php 
  $name1=$_GET['name'];  
  $email1=$_GET['email'];
  $phone1=$_GET['phone'];
  $qualification1=$_GET['qualification'];
  ?>
                    <form class="form-horizontal" action="newadmissions.php" method="POST" role="form"
                        enctype="multipart/form-data">
                        <br>
                        <h2 style="color:#f8c000">Admission Form</h2>
                        <div class="row g-3">
                            <div class="col-md-6">
                                <label for="name" class="col-md-6 control-label">Full Name</label>
                                <div class="col-sm-12">
                                    <input type="text" id="name" placeholder="Full Name" name="name"
                                        class="form-control" pattern="[a-zA-Z\-\ ]+" value="<?php
                         echo "$name1";
                         ?>">
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="phone" class="col-md-6 control-label">Phone</label>
                                <div class="col-sm-12">
                                    <input type="tel" id="phone" placeholder="Phone" name="phone" class="form-control"
                                        value="<?php
                         echo "$phone1";
                         ?>">
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="email" class="col-md-6 control-label">Email</label>
                                <div class="col-sm-12">
                                    <input type="email" id="email" placeholder="Email" name="email" class="form-control"
                                        pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="<?php
                         echo "$email1";
                         ?>">
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="dateofbirth" class="col-md-6 control-label">Date of Birth</label>
                                <div class="col-sm-12">
                                    <input type="date" id="dateofbirth" name="dateofbirth" class="form-control"
                                        required>
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="gender" class="col-md-6 control-label">Gender</label>
                                    <div class="col-md-12">
                                        <div class="col-md-4 form-check-inline">
                                            <input class="form-check-input" type="radio" name="gender" id="gender" value="Female">
                                            <label class="form-check-label" for="inlineRadio1">Female</label>
                                        </div>
                                        <div class="col-md-4 form-check-inline">
                                            <input class="form-check-input" type="radio" name="gender" id="gender" value="Male">
                                            <label class="form-check-label" for="gender">Male</label>
                                        </div>
                                    </div>
                            </div>
                                        <br />

                            <div class="col-md-6">
                                <label for="qualification" class="col-md-6 control-label">Qualification</label>
                                <div class="col-sm-12">
                                    <input type="text" id="qualification" name="qualification"
                                        placeholder="Your Qualification" class="form-control" 
                                        required value="<?php
                         echo "$qualification1";
                         ?>">
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="guardiansname" class="col-md-6 control-label">Guardians Name</label>
                                <div class="col-sm-12">
                                    <input type="text" id="guardiansname" name="guardiansname"
                                        placeholder="Guardians Name" class="form-control" pattern="[a-zA-Z\-\ ]+"
                                        required>
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="guardiansphone" class="col-md-8 control-label">Guardians Phone
                                    Number</label>
                                <div class="col-sm-12">
                                    <input type="text" id="guardiansphone" name="guardiansphone"
                                        placeholder="Guardians Phone Number" class="form-control" required>
                                </div>
                            </div>
                            <br />


                            <div class="col-md-6">
                                <label for="coursesopted" class="col-md-6 control-label">Courses Opted</label>
                                <div class="col-sm-12">
                                    <select class="form-select" id="coursesopted" name="coursesopted" required>
                                        <option value="SELECT YOUR INTEREST">Select your Interest</option>
                                        <option value="Web Designing and Development">Web Designing and Development
                                        </option>
                                        <option value="Python Programming">Python Programming</option>
                                        <option value="Civil Design Softwares">Civil Design Softwares</option>
                                        <option value="Digital Marketing">Digital Marketing</option>
                                        <option value="Android Development">Android Development</option>
                                        <option value="Cloud Computing">Cloud Computing</option>
                                        <option value="Programming Languages">Programming Languages</option>
                                        <option value="Basic Computers">Basic Computers</option>
                                        <option value="School Academics">School Academics</option>
                                    </select>
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="address" class="col-md-6 control-label">Address</label>
                                <div class="col-sm-12">
                                    <input type="address" id="address" name="address" placeholder="Residential Address"
                                        class="form-control" required>
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="adhaarno" class="col-md-6 control-label">Adhaar Number</label>
                                <div class="col-sm-12">
                                    <input type="text" id="adhaarno" name="adhaarno" placeholder="Your Adhaar Number"
                                        class="form-control" pattern="[0-9]{4}[0-9]{4}[0-9]{4}" required>
                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="adhaarfile" class=" col-md-6 form-label">Upload Your Adhaar</label>
                                <div class="col-sm-12">

                                    <input type="file" name="adhaarfile" id="adhaarfile" class="form-control">

                                </div>
                            </div>
                            <br />

                            <div class="col-md-6">
                                <label for="photofile" class=" col-md-6 form-label">Upload Your Photo</label>
                                <div class="col-sm-12">
                                    <input class="form-control" type="file" name="photofile" id="photofile" required>
                                </div>
                            </div>
                            <br />
                            <div class="col-md-6">
                                <label for="resume" class=" col-md-6 form-label">Upload Your Resume</label>
                                <div class="col-sm-12">
                                    <input class="form-control" type="file" name="resume" id="resume" required>
                                </div>
                            </div>
                            <br />

                            <div class="form-group">
                                <div class="col-sm-12 " style=text-align:center>
                                    <button type="submit" class="btn btn-warning">Register</button>
                                </div>
                            </div>
                    </form> <!-- /form -->


    </body>

</html>