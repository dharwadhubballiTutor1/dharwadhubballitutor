<?php
require "../../Admin/session.php";

include "../../Admin/DB Operations/enqueryOps.php";
require_once "../../Admin/Model/Coursesmodel.php";
require_once "../../Admin/DB Operations/CoursesOps.php";
?>
<html>

<head>
    <title>Services</title>

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
                <div class="container">
                    <h2 class="display-2">Service Details </h2>
                    <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                    <li class="nav-item" role="presentation">
                        <button class="nav-link active" id="pills-fees-tab" data-bs-toggle="pill"
                            data-bs-target="#pills-fees" type="button" role="tab" aria-controls="pills-fees"
                            aria-selected="true">Service Details</button>
                    </li>

                </ul>
                <div class="tab-content" id="pills-tabContent">
                    <div class="tab-pane fade show active" id="pills-fees" role="tabpanel"
                        aria-labelledby="pills-fees-tab">
                        <table class=enquiries id="enquery">
                            <thead>
                                <tr cellspacing="0">
                                  
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Phone</th>
                                    <th>Qualification</th>
                                    <th>Services Opted</th>
                                    <th> Action </th>
                                </tr>
                            </thead>
                            <?php
               
               $enquirylist= DBenquery::getAllEnqueryBySection("Services");
               echo "<tbody>";                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
               foreach($enquirylist as $enquiry) 
               {
                  echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>". $enquiry->get_enqueryFor().  "</td><td>" .'<a class="btn btn-danger" href="../View/serviceinfo.php?id='.$enquiry->get_id().'" role="button">View Details </a>'.'</td></tr>' ;
               }
               echo "</tbody>";
            ?>
                        </table>
                    </div>
                </div>
                </div>
            </div>
        </div>
    </div>