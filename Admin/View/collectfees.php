<?php
require "../../Admin/session.php";
include "../../Admin/navbar.php";
include "../../Admin/DB Operations/FeesOps.php";
include "../../Admin/Model/Feesmodel.php";
include "../../Admin/Utilities/Helper.php";
?>
<html>
    <head>
        <title>Student Profile</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="js/jquery-1.3.2.min.js" type="text/javascript"></script>
        <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css " />
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <div class="container">
                        <h2 class="h2">Students Details </h2>
                        <?php $id=$_GET['id'];
                              $collectfees= DBfees::collectionoffees($id);?>
                        <br />
                        <div class="row gutters-sm">
                            <div class="col-md-3 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                            
                                             <div class="mt-3">
                                                <?php echo $collectfees->get_name();?>
                                             </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="form-check text-center">
                                    <input type="radio" class="btn-check" name="options" id="option2">
                                    <label class="btn btn-danger" for="option2">Edit</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <form class="form" action="../Controller/stdprofileupdate.php" method="POST" id="myForm"
                                    enctype="multipart/form-data">
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label for="name" class="col-md-6 control-label">Full Name</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="name" placeholder="Full Name" name="name"
                                                    class="form-control" pattern="[a-zA-Z\-\ ]+" value="<?php
                         echo $collectfees->get_name();
                         ?>">
                                                <input type="hidden" id="id" name="id"
                                                    value="<?php echo $collectfees->get_id(); ?>">
                                            </div>
                                        </div>
                                        <br />
                                        
                                        <div class="col-md-6">
                                            <label for="coursesopted" class="col-md-6 control-label">Courses
                                                Opted</label>
                                            <div class="col-sm-12">
                                                <input type="text" class="form-control" id="coursesopted"
                                                    name="coursesopted" required value="<?php
                         echo $collectfees->get_coursesopted();
                         ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="tfees" class="col-md-6 control-label">Total fees</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="tfees" name="tfees"
                                                    placeholder="Total fees" class="form-control" required>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="col-md-6">
                                            <label for="pfees" class="col-md-6 control-label">Fees Paid</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="pfees" name="pfees"
                                                    placeholder="Fees Paid " class="form-control" required>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="col-md-6">
                                            <label for="feesplan" class="col-md-6 control-label">Fees Plan</label>
                                            <div class="col-sm-12">
                                                <select class="form-select" id="feesplan" name="feesplan"
                                                    required>
                                                    <option value="">Fees Plan</option>
                                                    <option value="Monthly">Monthly</option>
                                                    <option value="Full Payment">Full Payment</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br />
                                        <div class="col-md-6">
                                         <div id="duedate" style="display: none">
                                           <label for="duedate" class="col-md-6 control-label"> DueDate for the next payment:</label> 
                                            <div class="col-md-12">
                                            <input type="date" id="duedate" name="duedate"
                                                    class="form-control" required/>
                                          </div>
                                        </div>
                                        
                                       

                                        
                                       
                                        </div>
                                        <button class="btn btn-success" type="submit" name="submit">Update</button>
                                        <br />
                                    </div>
                                </form>
                                </br>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                $(document).ready(function() {
                    $("#myForm :input").prop("disabled", true);
                    $('input[type=radio][name=options]').click(function() {
                        $('#myForm :input').prop('disabled', false);
                    });
                });
                </script>
                <script type="text/javascript">
    $(function () {
        $("#feesplan").change(function () {
            if ($(this).val() == "Monthly") {
                $("#duedate").show();
            } else {
                $("#duedate").hide();
            }
        });
    });
</script>
    </body>


</html>