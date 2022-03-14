<?php
require "../../Admin/session.php";
require "../../Admin/Utilities/Helper.php";
include "../../Admin/DB Operations/followupOps.php";
require_once "../../Admin/DB Operations/CoursesOps.php";
require "../../Model/Registration.php";
require_once "header.php";
$id = $_GET["id"];
$name1 = $_GET['name'];
$email1 = $_GET['email'];
$phone1 = $_GET['phone'];

?>
<div class="card">
    <div class="card-header">
        <h6>Edit Enquiry</h6>
    </div>
    <div class="card-body">
        <form class="form-horizontal" action="../Controller/newenquiry.php" method="POST" role="form">
            <div class="row g-3">
                <div class="col-md-6">
                    <label class=label for=name2><b>Name</b></label>
                    <div class="col-sm-12">
                        <input type="hidden" name="id" id="id" value="<?php echo $id ?>">
                        <input type=text name=name2 class=form-control id=name2 placeholder=Name required value="<?php echo $name1 ?>" />
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label class=label for=email2><b>Email</b></label>
                    <div class="col-sm-12">
                        <input type=email name=email2 class=form-control id=email2 placeholder=name@example.com value="<?php echo $email1 ?>" />
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label class=label for=phone2><b>Phone:</b></label>
                    <div class="col-sm-12">
                        <input type=tel name=phone2 class=form-control id=phone2 placeholder=Number required value="<?php echo $phone1 ?>" />
                    </div>
                </div>
                <br />
                <div class="col-md-6">
                    <label class=label for=trainings2><b>Trainings</b></label>
                    <div class="col-sm-12">
                        <select class="custom-select" id="trainings2" name="trainings2">
                            <option value="">Select your Interest</option>
                            <?php
                            $option = "";
                            $courselist = DBcourse::selectall();
                            foreach ($courselist as $course) {
                                $option .= "<option 
                                                         >" . $course->get_cname() . "</option>";
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

            </div>
    </div>
    <div class="card-footer">
        <div class="form-group">
            <div class="col-sm-12 ">
                <button type="submit" class="btn btn-warning">Save</button>
            </div>
        </div>
    </div>
    </form>
</div>
<?php
    require_once "footer.php";
?>