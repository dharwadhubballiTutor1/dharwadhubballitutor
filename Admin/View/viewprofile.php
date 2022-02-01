<?php
require "../../Admin/session.php";
include "../../Admin/DB Operations/AdmissionsOps.php";
include "../../Admin/Model/Admissionsmodel.php";
include "../../Admin/Utilities/Helper.php";
include "../../Admin/DB Operations/CoursesOps.php";
include_once "header.php";
$id = $_GET['id'];
$admission = DBadmission::viewadmission($id);
?>
<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-md-6">
                <h6 class="">Students Details </h6>
            </div>
            <div class="col-md-6">
                <div class="form-check float-right">
                    <input type="radio" class="btn-check" name="options" id="option2">
                    <label class="" for="option2">Edit <i class="fas fa-edit"></i></label>
                </div>
            </div>
        </div>
    </div>
    <div class="card-body">
        <div class="row">
            <div class="col-md-4 ">
                <div class="d-flex flex-column align-items-center text-center">
                    <img src="<?php echo '../uploads/', $admission->get_photofile(); ?>" alt="Admin" class="rounded-circle" width="100" height="100" />
                    <label class="btn btn-default" for="photofile">
                        <i class="fa fa-camera" aria-hidden="true"></i></label>
                    <input type="file" name="photofile" id="photofile" class="form-control" form="myForm" hidden>
                </div>
            </div>
            <div class="col-md-8">
                <form class="form" action="../Controller/stdprofileupdate.php" method="POST" id="myForm" enctype="multipart/form-data">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label for="name" class="col-md-6 control-label">Full Name</label>
                            <div class="col-sm-12">
                                <input type="text" id="name" placeholder="Full Name" name="name" class="form-control" pattern="[a-zA-Z\-\ ]+" value="<?php
                                                                                                                                                        echo $admission->get_name();
                                                                                                                                                        ?>">
                                <input type="hidden" id="id" name="id" value="<?php echo $admission->get_id(); ?>">
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6">
                            <label for="phone" class="col-md-6 control-label">Phone</label>
                            <div class="col-sm-12">
                                <input type="tel" id="phone" placeholder="Phone" name="phone" class="form-control" value="<?php
                                                                                                                            echo $admission->get_phone();
                                                                                                                            ?>">
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6">
                            <label for="email" class="col-md-6 control-label">Email</label>
                            <div class="col-sm-12">
                                <input type="email" id="email" placeholder="Email" name="email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="<?php
                                                                                                                                                                                echo $admission->get_email();
                                                                                                                                                                                ?>">
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6">
                            <label for="dateofbirth" class="col-md-6 control-label">Date of
                                Birth</label>
                            <div class="col-sm-12">
                                <input type="date" id="dateofbirth" name="dateofbirth" class="form-control" required value="<?php
                                                                                                                            echo $admission->get_dateofbirth();
                                                                                                                            ?>">
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6" align=center>
                <label for="gender" class="control-label">Gender</label></br>
                <div class="form-check-inline">
                    <?php
                    if ($admission->get_gender() == "Female") {
                        echo '<input class="form-check-input" 
                                        type="radio" 
                                        name="gender"
                                        id="gender" 
                                        value="Female" checked>
                                <label class="form-check-label" 
                                        for="inlineRadio1">Female</label>
                    </div>
                    <div class="form-check-inline">
                                <input class="form-check-input" 
                                        type="radio" 
                                        name="gender"
                                        id="gender" value="Male">
                                <label class="form-check-label" 
                                        for="gender">Male</label>
                    </div>';
                    } else  if ($admission->get_gender() == "Male") {
                        echo '<input class="form-check-input" 
                                        type="radio" 
                                        name="gender"
                                        id="gender" 
                                        value="Female" >
                                <label class="form-check-label" 
                                        for="inlineRadio1">Female</label>
                    </div>
                    <div class="form-check-inline">
                                <input class="form-check-input" 
                                        type="radio" 
                                        name="gender"
                                        id="gender" 
                                        value="Male" checked>
                                <label class="form-check-label" 
                                        for="gender" >Male</label>
                    </div>';
                    } else {
                        echo '<input class="form-check-input" 
                                        type="radio" name="gender"
                                        id="gender" value="Female" >
                                <label class="form-check-label" for="inlineRadio1">Female</label>
                    </div>
                    <div class="form-check-inline">
                                <input class="form-check-input" 
                                        type="radio" 
                                        name="gender"
                                        id="gender" value="Male">
                                <label class="form-check-label" 
                                for="gender" >Male</label>
                    </div>';
                    } ?>
                </div>
                <br />
                <div class="col-md-6">
                    <label for="qualification" class="col-md-6 control-label">Qualification</label>
                    <div class="col-sm-12">
                        <input type="text" id="qualification" name="qualification" placeholder="Your Qualification" class="form-control" pattern="[A-Za-z]+" required value="<?php
                                                                                                                                                                                echo $admission->get_qualification();
                                                                                                                                                                                ?>">
                    </div>
                </div>
                <br />
                <div class="col-md-12">
                    <label for="guardiansname" class="col-md-12 control-label">Guardians
                        Name</label>
                    <div class="col-sm-12">
                        <input type="text" id="guardiansname" name="guardiansname" placeholder="Guardians Name" class="form-control" pattern="[a-zA-Z\-\ ]+" required value="<?php
                                                                                                                                                                                echo $admission->get_guardiansname();
                                                                                                                                                                                ?>">
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label for="guardiansphone" class="col-md-12 control-label">Guardians Phone
                        Number</label>
                    <div class="col-sm-12">
                        <input type="text" id="guardiansphone" name="guardiansphone" placeholder="Guardians Phone Number" class="form-control" required value="<?php
                                                                                                                                                                echo $admission->get_guardiansphone();
                                                                                                                                                                ?>">
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label for="coursesopted" class="col-md-6 control-label">Courses
                        Opted</label>
                    <div class="col-sm-12">
                        <select class="form-select" id="coursesopted" name="coursesopted" required>
                            <?php
                            $option = "";
                            $courselist = DBcourse::selectall();
                            foreach ($courselist as $course) {
                                $option .= "<option value='" . $course->get_id() . "'";
                                if ($course->get_id() == $admission->get_courseid()) {
                                    $option .= "selected";
                                    echo $course->get_id();
                                }
                                $option .=  ">" . $course->get_cname() . "</option>";
                            }

                            echo $option;

                            ?>
                        </select>
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label for="address" class="col-md-6 control-label">Address</label>
                    <div class="col-sm-12">
                        <textarea id="address" 
                            name="address" 
                            placeholder="Residential Address" 
                            class="form-control" 
                            required ><?php echo $admission->get_address();?>
                        </textarea>
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label for="adhaarno" class="col-md-12 control-label">Adhaar Number</label>
                    <div class="col-sm-12">
                        <input type="text" id="adhaarno" name="adhaarno" placeholder="Your Adhaar Number" class="form-control" pattern="[0-9]{4}[0-9]{4}[0-9]{4}" required value="<?php
                                                                                                                                                                                    echo $admission->get_adhaarno();
                                                                                                                                                                                    ?>">
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label for="adhaarfile" class=" col-md-6 form-label">Adhaar File</label>
                    <div class="col-md-12">
                        <a href="<?php echo "../uploads/" . $admission->get_adhaarfile(); ?>" class="form-control" download> Click to download Adhaar
                            file</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <label for="adhaarfile" class=" col-md-6 form-label">Resume</label>
                    <div class="col-sm-12">
                        <a href="<?php echo "../uploads/resume/" . $admission->get_resume(); ?>" class="form-control"> Click to
                            download Resume</a>
                    </div>
                </div>
                <div class="col-md-6">
                    <label for="adhaarfile" class=" col-md-6 form-label">Upload Adhaar</label>
                    <div class="col-sm-12">

                        <input type="file" name="adhaarfile" id="adhaarfile" class="form-control">

                    </div>
                </div>
                <div class="col-md-6">
                    <label for="resume" class=" col-md-12 form-label">Upload Resume</label>
                    <div class="col-sm-12">

                        <input type="file" name="resume" id="resume" class="form-control">

                    </div>
                </div>
                <br />
            </div>

        </div>
        <div class="card-footer">
            <button class="btn btn-success" type="submit" name="submit" form="myForm">Update</button>
            </form>
        </div>
    </div>
    <br>
    <?php include "footer.php"; ?>
    <script>
        $(document).ready(function() {
            $("#myForm :input").prop("disabled", true);
            $('input[type=radio][name=options]').click(function() {
                $('#myForm :input').prop('disabled', false);
            });
        });
    </script>