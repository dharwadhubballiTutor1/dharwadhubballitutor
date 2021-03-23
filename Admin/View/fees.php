<?php  
require "../../Admin/session.php";
include "../../Admin/DB Operations/FeesOps.php";

require "../../Admin/Model/Feesmodel.php";

include "../../Admin/navbar.php";
       ?>
<html>

    <head>
        <title>Fees</title>
        <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css " />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous" />
        <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
        <style>
             #addmissionlist_length{
             float: left;
             width: 50%;
             display: inline;
             margin-left:100px;
         }
         #enquery_length{
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
                  <h2 style=color:#2a0a5e>Course Fees at DharwadHubballiTutor</h2>
                  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
                        <li class="nav-item" role="presentation">
                            <button class="nav-link active" id="pills-fees-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-fees" type="button" role="tab" aria-controls="pills-fees"
                                aria-selected="true">Fees Details</button>
                        </li>
                        <li class="nav-item" role="presentation">
                            <button class="nav-link " id="pills-AddFees-tab" data-bs-toggle="pill"
                                data-bs-target="#pills-AddFees" type="button" role="tab" aria-controls="pills-AddFees"
                                aria-selected="false">Add Fees</button>
                        </li>
                    </ul>
                    <div class="tab-content" id="pills-tabContent">
                       <div class="tab-pane fade show active" id="pills-fees" role="tabpanel"
                            aria-labelledby="pills-fees-tab">
                            <table class=enquiries id="enquery">
                                <thead>
                                <tr cellspacing="0">
                                    <th> ID</th>
                                    <th>Name</th>
                                    <th>Course</th>
                                    <th> Action </th>
                                </tr>
                                </thead>
                                <?php 
                                 echo  "<tbody>";
                                 $admissionlist= DBfees::searchadmission();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
                                 foreach($admissionlist as $admission) 
                                 {
                                     echo "<tr><td> "  . $admission->get_id(). "</td><td>"  . $admission->get_name(). "</td><td>". $admission->get_coursesopted(). "</td><td>" .'<a class="btn btn-danger" href="../View/collectfees.php?id='.$admission->get_id().'" role="button">Collect Fees </a>'.'</td></tr>' ;
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
        <script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
         <script type="text/javascript" src="../DataTables/datatables.min.js"></script>
         <script>
        var table = $('#enquery').DataTable();
        var addmissionList = $('#addmissionlist').DataTable();
             $('#column3_search').on('keyup', function() {
            table.columns(0).search(this.value).draw();
            addmissionList.columns(0).search(this.value).draw();
             });

            $(document).ready(function(){
            $("[type=search]").addClass("form-control").attr("placeholder","Type to search...").attr("style","margin-left:50px");
            $("select").addClass("form-select").attr("aria-label","Default select example");
        });
        </script>
        </body>
        </html>