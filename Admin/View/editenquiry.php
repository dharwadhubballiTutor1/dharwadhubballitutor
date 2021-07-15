<?php
require "../../Admin/session.php";

require "../../Admin/Utilities/Helper.php";
include "../../Admin/DB Operations/followupOps.php";
require_once "../../Admin/DB Operations/CoursesOps.php";
require "../../Model/Registration.php";


?>
<html>

    <head>
        <title> FollowUp</title>
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css" />
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                <?php
                include "../../Admin/navbar.php";
                ?></div>
                <div class="col-md-9">
                <h2 class="display-2">Edit Enquiry</h2>
                <?php 
  $id=$_GET["id"];  
  $name1=$_GET['name'];  
  $email1=$_GET['email'];
  $phone1=$_GET['phone']; 
//   $followup= DBfollow::getAllEnqfollowup($id);
  ?>
                <form class="form-horizontal" action="../Controller/newenquiry.php" method="POST" role="form"
                            enctype="multipart/form-data">
                            <h2 style="color:#f8c000">New Enquiry</h2>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class=label for=name2><b>Name</b></label>
                                    <div class="col-sm-12">
                                    <input type="hidden" name="id" id="id" value="<?php echo $id ?>">
                                        <input type=text name=name2 class=form-control id=name2 placeholder=Name
                                            required value="<?php echo $name1 ?>" />
                                    </div>
                                </div>
                                <br />

                                <div class="col-md-6">
                                    <label class=label for=email2><b>Email</b></label>
                                    <div class="col-sm-12">
                                        <input type=email name=email2 class=form-control id=email2
                                            placeholder=name@example.com value="<?php echo $email1 ?>" />
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label class=label for=phone2><b>Phone:</b></label>
                                    <div class="col-sm-12">
                                        <input type=tel name=phone2 class=form-control id=phone2 placeholder=Number
                                            required value="<?php echo $phone1 ?>" />
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label class=label for=trainings2><b>Trainings</b></label>
                                    <div class="col-sm-12">
                                        <select class="custom-select" id="trainings2" name="trainings2">
                                            <option value="">Select your Interest</option>
                                            <?php 
                                                    $option="";
                                                    $courselist=DBcourse::selectall();
                                                    foreach($courselist as $course) {
                                                        $option.= "<option 
                                                         >".$course->get_cname()."</option>";
                                                    }

                                                    echo $option;
                                                   
                                                    ?>
                                        </select><br />
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label class=label for=internship2><b>Internships</b></label>
                                    <div class="col-sm-12">
                                        <select class=custom-select id=internship2 name=internship2>
                                            <option value="">Select your Interest</option>
                                            <option value="Web Designing and Development">Web Designing and Development
                                            </option>
                                            <option value="Python Programming">Python Programming</option>
                                            <option value="Digital Marketing">Digital Marketing</option>
                                            <option value="Android Development">Android Development</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-6">
                                    <label class=label for=services><b>Services</b></label>
                                    <div class="col-sm-12">
                                        <select class=custom-select id=services name=services>
                                            <option value="">Select your Interest</option>
                                            <option value="Web Designing and Development">Web Designing and Development
                                            </option>
                                            <option value="Python Programming">Business Process Setup</option>
                                            <option value="Digital Marketing">Digital Marketing</option>
                                            <option value="Mobile Development">Mobile Development</option>
                                            <option value="Graphic Designing">Graphic Designing</option>
                                            <option value="Branding">Branding</option>
                                        </select>
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