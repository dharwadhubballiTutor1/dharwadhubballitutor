<?php
require "../../Admin/session.php";

include "../../Admin/DB Operations/FeesOps.php";
include "../../Admin/Model/Feesmodel.php";
include "../../Admin/Utilities/Helper.php";
include "header.php";
$id = $_GET['id'];
$collectfees = DBfees::collectionoffees($id);
?>
<style>
    #enquery_length {
        float: left;
        width: 50%;
        display: inline;
        margin-left: 100px;
    }

    #feepaymentlist_length {
        float: left;
        width: 50%;
        display: inline;
        margin-left: 100px;
    }
</style>


<div class="card">
    <div class="card-header">
        <div class="row">
            <div class="col-md-6">
                <h6 class="">Fees Details </h6>
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
    <table class="table table-bordered" id="feepaymentlist">
            <thead>
                <tr>
                    <th>Paid Date</th>
                    <th>Paid Fees</th>
                    <th>Pending Fees</th>
                    <th>Payment Mode</th>
                    <th> Fee Receipt </th>
                </tr>
            </thead>
            <?php

            echo  "<tbody>";
            $feesdetails = DBfees::viewfeesdetails($id);
            foreach ($feesdetails as $fees) {
                echo "<tr><td> "  .  $fees->get_modifieddate() . "</td><td>"  . $fees->get_pfees() . "</td><td>" . $fees->get_pendingfees() . "</td><td>" . $fees->get_pmode() . "</td><td>"
                    . '<a class="btn btn-warning" id="feereceipt" name="feereceipt" href="../../Admin/uploads/Fee Receipts/' . $fees->get_feereceipt() . '" role="button" download>Fee Receipt </a>' . '</td></tr>';
            }
            echo  "</tbody>";
            ?>
        </table>
        <div class="row">
            <div class="col-md-12">
                <form class="form" action="../Controller/feesaddition.php" method="POST" id="myForm" enctype="multipart/form-data">
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label for="name" class="col-md-6 control-label">Full Name</label>
                            <div class="col-sm-12">
                                <input type="text" id="name" placeholder="Full Name" name="name" class="form-control" value="<?php
                                                                                                                                echo $collectfees->get_name();
                                                                                                                                ?>">
                                <input type="hidden" id="admitid" name="admitid" value="<?php echo $collectfees->get_admitid(); ?>">
                                <input type="hidden" id="courseid" name="courseid" value="<?php echo $collectfees->get_courseid(); ?>">
                            </div>
                        </div>
                        <br />

                        <div class="col-md-6">
                            <label for="coursesopted" class="col-md-6 control-label">Courses
                                Opted</label>
                            <div class="col-sm-12">
                                <input type="text" class="form-control" id="coursesopted" name="coursesopted" required value="<?php
                                                                                                                                echo $collectfees->get_coursesopted();
                                                                                                                                ?>">
                            </div>
                        </div>
                        <br />

                        <div class="col-md-6">
                            <label for="phone" class="col-md-6 control-label">Phone</label>
                            <div class="col-sm-12">
                                <input type="tel" id="phone" placeholder="Phone" name="phone" class="form-control" value="<?php
                                                                                                                            echo $collectfees->get_phone();
                                                                                                                            ?>">
                            </div>
                        </div>
                        <br />

                        <div class="col-md-6">
                            <label for="tfees" class="col-md-6 control-label">Total fees</label>
                            <div class="col-sm-12">
                                <input type="text" id="tfees" name="tfees" class="form-control" required value="<?php echo $collectfees->get_tfees() ?>">
                            </div>
                        </div>
                        <br />

                        <div class="col-md-6">
                            <label for="pfees" class="col-md-6 control-label">Fees Paid</label>
                            <div class="col-sm-12">
                                <input type="text" id="pfees" name="pfees" class="form-control" required value="<?php echo $collectfees->get_pfees() ?>">
                            </div>
                        </div>
                        <br />

                        <div class="col-md-6">
                            <label for="pendingfees" class="col-md-6 control-label">Pending Fees</label>
                            <div class="col-sm-12">
                                <input type="text" id="pendingfees" name="pendingfees" class="form-control" required value="<?php echo $collectfees->get_pendingfees() ?>">
                            </div>
                        </div>
                        <br />

                        <div class="col-md-6">
                            <label for="feesplan" class="col-md-6 control-label">Fees Plan</label>
                            <div class="col-sm-12">
                                <select class="form-select" id="feesplan" name="feesplan" required>
                                    <option value="">Fees Plan</option>
                                    <option value="Part Payment">Part Payment</option>
                                    <option value="Full Payment">Full Payment</option>
                                </select>
                            </div>
                        </div>
                        <br />
                        <div id="duedatediv" class="col-md-6" style="display: none">
                            <label for="duedate" class="col-md-6 control-label"> Next payment on:</label>
                            <div class="col-sm-12">
                                <input type="date" id="duedate" name="duedate" class="form-control" required />
                            </div>
                        </div>
                        <br />
                        <div class="col-md-6">
                            <label for="pmode" class="col-md-6 control-label">Payment Mode</label>
                            <div class="col-sm-12">
                                <select class="form-select" id="pmode" name="pmode" required>
                                    <option value=""></option>
                                    <option value="Cash">Cash</option>
                                    <option value="Net Banking">Net Banking</option>
                                    <option value="Debit/Credit Card">Debit/Credit Card </option>
                                    <option value="UPI transaction">UPI transaction</option>
                                </select>
                            </div>
                        </div>
                        <br />

                        <div class="col-md-6">
                            <label for="pdescription" class="col-md-6 control-label">Payment
                                Description</label>
                            <div class="col-sm-12">
                                <input type="text" id="pdescription" name="pdescription" placeholder="Payment Description" class="form-control" required>
                            </div>
                        </div>
                        <br />

                        <div>
                            <button class="btn btn-success" id="btn" type="submit" name="submit">Update <i class="fas fa-save"></i></button>
                            <br />
                        </div>
                </form>
                </br>
            </div>
        </div>
      
    </div>

</div>

<?php include ("footer.php");?>

<script>
    $(document).ready(function() {
        $("#feepaymentlist").DataTable({})
        $("#myForm :input").prop("disabled", true);
        $('input[type=radio][name=options]').click(function() {
            $('#myForm :input').prop('disabled', false);
            if (!parseInt($('#tfees').val())) {
                $('#tfees').focus();
                $('#pfees').attr('disabled', true);
            } else {
                $('#tfees').attr('readonly', true);
            }
        });

        $("#feesplan").change(function() {

            if ($(this).val() == "Part Payment") {
                $("#duedatediv").show();
                var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                today = yyyy + '-' + mm + '-' + dd;

                $("#duedate").attr("min", today);
                $("#duedate").attr('disabled', false);
                $("#btn").attr("disabled", false);
            } else {
                debugger;
                if (parseInt($("#pfees").val()) > 0 && parseInt($("#pendingfees").val()) != 0) {
                    $("#btn").attr("disabled", true);
                    alert("Fees is still due");
                }

                $("#duedate").attr('disabled', true);
            }
        });

        $("#tfees").change(function() {
            if (parseInt($(this).val()) > 0) {
                $('#pfees').attr('disabled', false);
            }
        });

        $("#pfees").change(function() {
            debugger;
            if (parseInt($(this).val()) < parseInt($("#tfees").val())) {
                if ($("#pendingfees").val() == 0) {
                    var pendingfees = $("#tfees").val() - $("#pfees").val();
                } else {
                    var pendingfees = $("#pendingfees").val() - $("#pfees").val();

                }
                $("#pendingfees").val(pendingfees);
            }


        });

        if (parseInt($("#pfees").val()) == parseInt($("#tfees").val())) {
            $("#myForm :input").prop("disabled", true);
            $("#option2").prop("disabled", true);
        }


    });
</script>