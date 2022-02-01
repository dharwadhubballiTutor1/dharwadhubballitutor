<?php
require "../session.php";

include "../../Admin/DB Operations/enqueryOps.php";
require_once "../../Admin/Model/Coursesmodel.php";
require_once "../../Admin/DB Operations/CoursesOps.php";
require_once "header.php"
?>
            <div class="card">
                <div class="card-header">
                    <h6 class="">Enquiries</h6>
                </div>
                <div class="card-body">
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="trainings-tab" data-bs-toggle="tab" data-bs-target="#trainings" type="button" role="tab" aria-controls="trainings" aria-selected="true"><b>Trainings</b></button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="internship-tab" data-bs-toggle="tab" data-bs-target="#internship" type="button" role="tab" aria-controls="internship" aria-selected="false"><b>Internship</b></button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="democlass-tab" data-bs-toggle="tab" data-bs-target="#democlass" type="button" role="tab" aria-controls="democlass" aria-selected="false"><b>Demo
                                    Class</b></button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="services-tab" data-bs-toggle="tab" data-bs-target="#services" type="button" role="tab" aria-controls="services" aria-selected="false"><b>Services</b></button>
                        </li>
                        <li class="nav-item " role="presentation">
                            <button class="nav-link " id="enquiry-tab" data-bs-toggle="tab" data-bs-target="#enquiry" type="button" role="tab" aria-controls="enquiry" aria-selected="false"><b>Add
                                    Enquiry</b></button>
                        </li>
                    </ul>
                    <div class="tab-content" id="myTabContent">
                        <div class="tab-pane fade show active" id="trainings" role="tabpanel" aria-labelledby="trainings-tab">

                            <table id="training" class="table table-bordered table-responsive">
                                <thead>
                                    <tr>
                                        <th style="display:none">Id</th>
                                        <th>DOE</th>
                                        <th>Name<i class="bi bi-arrow-down-up"></i></th>
                                        <th>Email</th>
                                        <th>Phone</th>
                                        <th style="display:none">Qualification</th>
                                        <th>Trainings</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <?php
                                echo "<tbody>";
                                $enquirylist = DBenquery::getAllEnqueryBySection("Trainings");

                                foreach ($enquirylist as $enquiry) {
                                    echo "<tr><td style='display:none'> " . $enquiry->get_Id() . "</td>
                                        <td> " . $enquiry->get_enqcreatedon() . "</td>
                                         <td> " . $enquiry->get_name() . "</td>
                                        <td>" . $enquiry->get_email() . "</td>
                                        <td>" . $enquiry->get_phone() . "</td>
                                        <td style='display:none'>" . $enquiry->get_qualification() . "</td>
                                        <td>" . $enquiry->get_enqueryFor() . "</td>
                                        <td>
                                            <div class='dropdown'>
                                                <button class='btn btn-secondary btn-sm dropdown-toggle' type='button' id='dropdownMenu2' data-bs-toggle='dropdown' aria-expanded='false'>
                                                <i class='fas fa-info-circle'></i>
                                                </button>
                                            <div class='dropdown-menu' aria-labelledby='dropdownMenu2'>
                
                                                <a class='btn  dropdown-item'  role='button' href='followup.php?id=" . $enquiry->get_id() . "'> 
                                                    <i class='fas fa-comment-dots'></i>
                                                    Follow Up
                                                </a>
                                                <a class='btn  dropdown-item' role='button' href='editenquiry.php?id=" . $enquiry->get_id() . '&name=' . $enquiry->get_name() . '&email=' . $enquiry->get_email() . '&phone=' . $enquiry->get_phone() . "''> 
                                                    <i class='fas fa-info'></i>
                                                    Edit Enquiry
                                                </a>
                                            </div> 
                                            </div>
                                        </td></tr>";
                                }
                                echo "</tbody>";
                                ?>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="internship" role="tabpanel" aria-labelledby="internship-tab">
                                    <table class="table table-bordered table-responsive" id="Internship">
                                        <thead>
                                            <tr>
                                                <th>DOE</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Qualification</th>
                                                <th>Internship</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <?php


                                        $enquirylist = DBenquery::getAllEnqueryBySection("Internship");
                                        echo "<tbody>";
                                        foreach ($enquirylist as $enquiry) {
                                            echo "<tr><td> " . $enquiry->get_enqcreatedon() . "</td>
                                                    <td> " . $enquiry->get_name() . "</td>
                                                    <td>" . $enquiry->get_email() . "</td>
                                                    <td>" . $enquiry->get_phone() . "</td>
                                                    <td>" . $enquiry->get_qualification() . "</td>
                                                    <td>" . $enquiry->get_enqueryFor() . "</td>
                                                    <td>
                                                        <div class='dropdown'>
                                                            <button class='btn btn-secondary dropdown-toggle' type='button' id='dropdownMenu2' data-bs-toggle='dropdown' aria-expanded='false'>
                                                            <i class='fas fa-info-circle'></i>
                                                            </button>
                                                        <div class='dropdown-menu' aria-labelledby='dropdownMenu2'>
                            
                                                            <a class='btn  dropdown-item'  role='button' href='followup.php?id=" . $enquiry->get_id() . "'> 
                                                                <i class='fas fa-comment-dots'></i>
                                                                Follow Up
                                                            </a>
                                                            <a class='btn  dropdown-item' role='button' href='editenquiry.php?id=" . $enquiry->get_id() . '&name=' . $enquiry->get_name() . '&email=' . $enquiry->get_email() . '&phone=' . $enquiry->get_phone() . "''> 
                                                                <i class='fas fa-info'></i>
                                                                Edit Enquiry
                                                            </a>
                                                        </div> 
                                                        </div>
                                                    </td>
                                                </tr>";
                                        }
                                        echo "</tbody>";
                                        ?>
                                    </table>
                        </div>
                        <div class="tab-pane fade" id="democlass" role="tabpanel" aria-labelledby="democlass-tab">
                            <div class="card">
                                <div class="card-body">
                                    <table class="table table-striped" id="democlasstable">
                                        <thead>
                                            <tr>
                                                <th>Created Date</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Qualification</th>
                                                <th>Demo</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <?php

                                        $enquirylist = DBenquery::getAllEnqueryBySection("Demo");
                                        echo "<tbody>";
                                        foreach ($enquirylist as $enquiry) {
                                            echo "<tr><td> " . $enquiry->get_enqcreatedon() . "</td>
                                     <td> " . $enquiry->get_name() . "</td>
                                     <td>" . $enquiry->get_email() . "</td>
                                     <td>" . $enquiry->get_phone() . "</td>
                                     <td>" . $enquiry->get_qualification() . "</td>
                                     <td>" . $enquiry->get_enqueryFor() . "</td>
                                     <td>
                                    <div class='dropdown'>
                                        <button class='btn btn-secondary dropdown-toggle' type='button' id='dropdownMenu2' data-bs-toggle='dropdown' aria-expanded='false'>
                                        <i class='fas fa-info-circle'></i>
                                        </button>
                                    <div class='dropdown-menu' aria-labelledby='dropdownMenu2'>
        
                                        <a class='btn  dropdown-item'  role='button' href='followup.php?id=" . $enquiry->get_id() . "'> 
                                            <i class='fas fa-comment-dots'></i>
                                            Follow Up
                                        </a>
                                        <a class='btn  dropdown-item' role='button' href='editenquiry.php?id=" . $enquiry->get_id() . '&name=' . $enquiry->get_name() . '&email=' . $enquiry->get_email() . '&phone=' . $enquiry->get_phone() . "''> 
                                            <i class='fas fa-info'></i>
                                            Edit Enquiry
                                        </a>
                                    </div> 
                                    </div>
                                </td></tr>";
                                        }
                                        echo "</tbody>";
                                        ?>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="services" role="tabpanel" aria-labelledby="services-tab">
                            
                                    <table class="table table-bordered " id="Services">
                                        <thead>
                                            <tr>
                                                <th>DOE</th>
                                                <th>Name</th>
                                                <th>Email</th>
                                                <th>Phone</th>
                                                <th>Services</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <?php

                                        $enquirylist = DBenquery::getAllEnqueryBySection("Services");
                                        echo "<tbody>";
                                        foreach ($enquirylist as $enquiry) {
                                            echo "<tr><td> " . $enquiry->get_enqcreatedon() . "</td>
                                      <td> " . $enquiry->get_name() . "</td>
                                      <td>" . $enquiry->get_email() . "</td>
                                      <td>" . $enquiry->get_phone() . "</td>
                                      <td>" . $enquiry->get_enqueryFor() . "</td>
                                      <td>
                                      <div class='dropdown'>
                                          <button class='btn btn-secondary dropdown-toggle' type='button' id='dropdownMenu2' data-bs-toggle='dropdown' aria-expanded='false'>
                                          <i class='fas fa-info-circle'></i>
                                          </button>
                                      <div class='dropdown-menu' aria-labelledby='dropdownMenu2'>
          
                                          <a class='btn  dropdown-item'  role='button' href='followup.php?id=" . $enquiry->get_id() . "'> 
                                              <i class='fas fa-comment-dots'></i>
                                              Follow Up
                                          </a>
                                          <a class='btn  dropdown-item' role='button' href='editenquiry.php?id=" . $enquiry->get_id() . "'> 
                                              <i class='fas fa-info'></i>
                                              Edit Enquiry
                                          </a>
                                      </div> 
                                      </div>
                                  </td></tr>";
                                        }
                                        echo "</tbody>";
                                        ?>
                                    </table>
                        </div>
                        <div class="tab-pane fade" id="enquiry" role="tabpanel" aria-labelledby="enquiry-tab">

                            <form class="form-horizontal" action="../Controller/newenquiry.php" method="POST" role="form" autocomplete="off">
                                <div class="row g-3">
                                    <div class="col-md-6">
                                        <label class=label for=name2>Name</label>
                                        <div class="col-sm-12">
                                            <input type=text name=name2 class=form-control id=name2 placeholder=Name required />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-md-6">
                                        <label class=label for=email2>Email</label>
                                        <div class="col-sm-12">
                                            <input type=email name=email2 class=form-control id=email2 placeholder=name@example.com />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-md-6">
                                        <label class=label for=phone2>Phone </label>
                                        <div class="col-sm-12">
                                            <input type=tel name=phone2 class=form-control id=phone2 placeholder=Number required />
                                        </div>
                                    </div>
                                    <br />
                                    <div class="col-md-6">
                                        <label class=label for=trainings2>Trainings</label>
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
                                        <label class=label for=internship2>Internships</label>
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
                                        <label class=label for=services>Services</label>
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
                                        <div class="col-sm-12 ">
                                            <button type="submit" class="btn btn-warning">Register</button>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <?php require_once("footer.php") ?>

<br />

<script>
    var table = $('#training').DataTable({
        "order": [0, 'desc']
    });
    var internship = $('#Internship').DataTable();
    var DemoClass = $("#democlasstable").DataTable();
    var Services = $("#Services").DataTable();
    $('#column3_search').on('keyup', function() {
        table.columns(0).search(this.value).draw();
        internship.columns(0).search(this.value).draw();
        DemoClass.columns(0).search(this.value).draw();
        Services.columns(0).search(this.value).draw();
    });
</script>

</body>

</html>