<?php 
require "../session.php";

include "../../Admin/DB Operations/enqueryOps.php";
require_once "../../Admin/Model/Coursesmodel.php";
require_once "../../Admin/DB Operations/CoursesOps.php";
?>
<title>Enquiries</title>

<style>
#training_length {
    float: left;
    width: 50%;
    display: inline;
    margin-left: 100px;
}

#Internship_length {
    float: left;
    width: 50%;
    display: inline;
    margin-left: 100px;
}

#democlasstable_length {
    float: left;
    width: 50%;
    display: inline;
    margin-left: 100px;
}

#Services_length {
    float: left;
    width: 50%;
    display: inline;
    margin-left: 100px;
}

.px-2 {
    margin-right: 0.5rem;
    margin-left: 30rem;
}
</style>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
    integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
<link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css" />

</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <?php
                include "../../Admin/navbar.php";
                ?>
            </div>
            <div class="col-md-9">
                <h2 class="display-2">Enquiries</h2>
                <ul class="nav nav-tabs" id="myTab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="trainings-tab" data-bs-toggle="tab"
                            data-bs-target="#trainings" type="button" role="tab" aria-controls="trainings"
                            aria-selected="true"><b>Trainings</b></button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="internship-tab" data-bs-toggle="tab" data-bs-target="#internship"
                            type="button" role="tab" aria-controls="internship"
                            aria-selected="false"><b>Internship</b></button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="democlass-tab" data-bs-toggle="tab" data-bs-target="#democlass"
                            type="button" role="tab" aria-controls="democlass" aria-selected="false"><b>Demo
                                Class</b></button>
                    </li>
                    <li class="nav-item" role="presentation">
                        <button class="nav-link" id="services-tab" data-bs-toggle="tab" data-bs-target="#services"
                            type="button" role="tab" aria-controls="services"
                            aria-selected="false"><b>Services</b></button>
                    </li>
                    <li class="nav-item " role="presentation">
                        <button class="nav-link " id="enquiry-tab" data-bs-toggle="tab" data-bs-target="#enquiry"
                            type="button" role="tab" aria-controls="enquiry" aria-selected="false"><b>Add
                                Enquiry</b></button>
                    </li>
                </ul>
                <br />

                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="trainings" role="tabpanel"
                        aria-labelledby="trainings-tab">
                        <table id="training" class="display enquiries">
                            <thead>
                                <tr>
                                    <th>Name<i class="bi bi-arrow-down-up"></i></th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Qualification</th>
                                    <th>Trainings</th>


                                </tr>
                            </thead>
                            <?php
               $enquirylist= DBenquery::getAllEnqueryBySection("Trainings");
               echo "<tbody>";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                foreach($enquirylist as $enquiry) 
                {
                    echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>". $enquiry->get_enqueryFor(). "</td></tr>" ;
                }
                echo "</tbody>";
                                ?>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="internship" role="tabpanel" aria-labelledby="internship-tab">
                        <table class="display enquiries" id="Internship">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Qualification</th>
                                    <th>Internship</th>
                                </tr>
                            </thead>
                            <?php
              
           
            $enquirylist= DBenquery::getAllEnqueryBySection("Internship");
            echo "<tbody>";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
             foreach($enquirylist as $enquiry) 
             {
                 echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>". $enquiry->get_enqueryFor(). "</td></tr>";
             }
             echo "</tbody>";
             ?>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="democlass" role="tabpanel" aria-labelledby="democlass-tab">
                        <table class="enquiries" id="democlasstable">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Qualification</th>
                                    <th>Demo</th>
                                </tr>
                            </thead>
                            <?php
              
            //    $db=ConnectDb::getInstance();
            $enquirylist= DBenquery::getAllEnqueryBySection("Demo");
            echo "<tbody>";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
             foreach($enquirylist as $enquiry) 
             {
                 echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>". $enquiry->get_enqueryFor(). "</td></tr>";
             }
             echo "</tbody>";
             ?>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="services" role="tabpanel" aria-labelledby="services-tab">
                        <table class="enquiries display" id="Services">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Qualification</th>
                                    <th>Services</th>
                                </tr>
                            </thead>
                            <?php
               
                                   $enquirylist= DBenquery::getAllEnqueryBySection("Services");
                                   echo "<tbody>";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                                   foreach($enquirylist as $enquiry) 
                                   {
                                      echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>". $enquiry->get_enqueryFor(). "</td></tr>";
                                   }
                                   echo "</tbody>";
                                ?>
                        </table>
                    </div>
                    <div class="tab-pane fade" id="enquiry" role="tabpanel" aria-labelledby="enquiry-tab">

                        <form class="form-horizontal" action="../Controller/newenquiry.php" method="POST" role="form"
                            enctype="multipart/form-data">
                            <h2 style="color:#f8c000">New Enquiry</h2>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <label class=label for=name2><b>Name</b></label>
                                    <div class="col-sm-12">
                                        <input type=text name=name2 class=form-control id=name2 placeholder=Name
                                            required />
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label class=label for=email2><b>Email</b></label>
                                    <div class="col-sm-12">
                                        <input type=email name=email2 class=form-control id=email2
                                            placeholder=name@example.com />
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label class=label for=phone2><b>Phone:</b></label>
                                    <div class="col-sm-12">
                                        <input type=tel name=phone2 class=form-control id=phone2 placeholder=Number
                                            required />
                                    </div>
                                </div>
                                <br />
                                <div class="col-md-6">
                                    <label class=label for=trainings2><b>Trainings</b></label>
                                    <div class="col-sm-12">
                                        <select class="custom-select" id="trainings2" name="trainings2">
                                            <option value="SELECT YOUR INTEREST">Select your Interest</option>
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

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"
        integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

    <script type="text/javascript" src="../DataTables/datatables.min.js"></script>
    <script>
    var table = $('#training').DataTable();
    var internship = $('#Internship').DataTable();
    var DemoClass = $("#democlasstable").DataTable();
    var Services = $("#Services").DataTable();
    // #column3_search is a <input type="text"> element
    $('#column3_search').on('keyup', function() {
        table.columns(0).search(this.value).draw();
        internship.columns(0).search(this.value).draw();
        DemoClass.columns(0).search(this.value).draw();
        Services.columns(0).search(this.value).draw();
    });
    $(document).ready(function() {
        $("[type=search]").addClass("form-control").attr("placeholder", "Type to search...").attr("style",
            "margin-left:50px");
        $("select").addClass("form-select").attr("aria-label", "Default select example");

    });
    </script>
</body>

</html>