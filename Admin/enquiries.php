<?php 
require "session.php";
include "../Admin/navbar.php";
include "../Admin/DB Operations/enqueryOps.php";
?>
<html>

    <head>
        <title>ENQUIRIES</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
        <link rel=stylesheet href=../Admin/css/dharwadhubballitutoradmin.css />
        <style>
         #training_length{
             float: left;
             width: 50%;
             display: inline;
             margin-left:100px;
         }
         #Internship_length{
            float: left;
             width: 50%;
             display: inline;
             margin-left:100px; 
         }
         #democlasstable_length{
            float: left;
             width: 50%;
             display: inline;
             margin-left:100px; 
         }
         #Services_length{
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
                    <h2 class="display-2">Equiries</h2>
                    <ul class="nav nav-tabs" id="myTab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="trainings-tab" data-bs-toggle="tab"
                                data-bs-target="#trainings" type="button" role="tab" aria-controls="trainings"
                                aria-selected="true"><b>Trainings</b></button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link" id="internship-tab" data-bs-toggle="tab"
                                data-bs-target="#internship" type="button" role="tab" aria-controls="internship"
                                aria-selected="false" ><b>Internship</b></button>
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
               $enquirylist= DBenquery::getAllEnquery("Trainings");
               echo "<tbody>";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                foreach($enquirylist as $enquiry) 
                {
                    echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>". $enquiry->get_enqueryFor(). "</td></tr>";
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
              
           
            $enquirylist= DBenquery::getAllEnquery("Internship");
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
            $enquirylist= DBenquery::getAllEnquery("Demo");
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
               
               $enquirylist= DBenquery::getAllEnquery("Services");
               echo "<tbody>";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                foreach($enquirylist as $enquiry) 
                {
                    echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>". $enquiry->get_enqueryFor(). "</td></tr>";
                }
                echo "</tbody>";
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
        var table = $('#training').DataTable();
        var internship=$('#Internship').DataTable();
        var DemoClass=$("#democlasstable").DataTable();
        var Services=$("#Services").DataTable();
        // #column3_search is a <input type="text"> element
        $('#column3_search').on('keyup', function() {
            table.columns(0).search(this.value).draw();
            internship.columns(0).search(this.value).draw();
            DemoClass.columns(0).search(this.value).draw();
            Services.columns(0).search(this.value).draw();
        });
        $(document).ready(function(){
            $("[type=search]").addClass("form-control").attr("placeholder","Type to search...").attr("style","margin-left:50px");
            $("select").addClass("form-select").attr("aria-label","Default select example");

        });
        </script>
    </body>
</html>