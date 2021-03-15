<?php
session_start();  
include "../Admin/DB Operations/TrainerOps.php";
include "../Admin/Model/Trainermodel.php";
include "../Admin/navbar.php";
?>
<html>
    <head>
        <title>Trainers at DharwadHubballiTutor</title>
        <link rel=stylesheet href="../Admin/css/dharwadhubballitutoradmin.css " />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous" />
        <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
        <style>
        .form-check-label {
            color: white;
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
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="pills-admissions-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-admissions" type="button" role="tab"
                                aria-controls="pills-admissions" aria-selected="false">Admission List</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                        <div class="tab-pane fade show active" id="pills-newtrainer" role="tabpanel"
                            aria-labelledby="pills-newtrainer-tab">
                            <form class="form-horizontal" action="newtrainer.php" method="POST" role="form"
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

                                    <div class="col-md-12">
                                        <label for="coursesassigned" class="col-md-6 control-label"
                                            name="coursesassigned">Courses Assigned</label>
                                        <div class="col-md-12">
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    value="option1">
                                                <label class="form-check-label" for="coursesassigned">Web Designing and
                                                    Development</label>
                                            </div>
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="courses" value="option2">
                                                <label class="form-check-label" for="coursesassigned">Python
                                                    Programming</label>
                                            </div>
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="coursesassigned" value="option3">
                                                <label class="form-check-label" for="coursesassigned">Cloud
                                                    Computing</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="coursesassigned" value="option4">
                                                <label class="form-check-label" for="coursesassigned">Programming
                                                    Languages</label>
                                            </div>
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="coursesassigned" value="option5">
                                                <label class="form-check-label" for="coursesassigned">Civil Design
                                                    Softwares</label>
                                            </div>
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="coursesassigned" value="option6">
                                                <label class="form-check-label" for="coursesassigned">Android
                                                    Development</label>
                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="coursesassigned" value="option7">
                                                <label class="form-check-label" for="coursesassigned">Digital
                                                    Marketing</label>
                                            </div>
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="coursesassigned" value="option8">
                                                <label class="form-check-label" for="coursesassigned">Basics Of
                                                    Computers </label>
                                            </div>
                                            <div class="col-md-3 form-check-inline">
                                                <input class="form-check-input" type="checkbox" id="coursesassigned"
                                                    name="coursesassigned" value="option9">
                                                <label class="form-check-label" for="coursesassigned">School
                                                    Academics</label>
                                            </div>
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
                                        <label for="adhaarfile" class=" col-md-6 form-label">Upload Your Adhaar</label>
                                        <div class="col-sm-12">

                                            <input type="file" name="adhaarfile" id="adhaarfile" class="form-control">

                                        </div>
                                    </div>
                                    <br />

                                    <div class="col-md-6">
                                        <label for="photofile" class=" col-md-6 form-label">Upload Your Photo</label>
                                        <div class="col-sm-12">
                                            <input class="form-control" type="file" name="photofile" id="photofile"
                                                required>
                                        </div>
                                    </div>
                                    <br />
                                    <div class="form-group">
                                        <div class="col-sm-12 " style=text-align:center>
                                            <button type="submit" class="btn btn-warning">Register</button>
                                        </div>
                                    </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </body>

</html>