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
        
        <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css " />
        <style>
             #enquery_length{
             float: left;
             width: 50%;
             display: inline;
             margin-left:100px;
         }
         #feepaymentlist_length{
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
                    <div class="container">
                        <h2 class="h2">Students Details </h2>
                        <?php $id=$_GET['id'];
                              $collectfees= DBfees::collectionoffees($id);
                              
                               ?>
                        <br />
                        <div class="row gutters-sm">
                            <div class="col-md-3 mb-3">
                                
                                <br />
                                <div class="form-check text-center">
                                    <input type="radio" class="btn-check" name="options" id="option2">
                                    <label class="btn btn-danger" for="option2">Edit</label>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <form class="form" action="../Controller/feesaddition.php" method="POST" id="myForm"
                                    enctype="multipart/form-data">
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label for="name" class="col-md-6 control-label">Full Name</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="name" placeholder="Full Name" name="name"
                                                    class="form-control"  value="<?php
                                                 echo $collectfees->get_name();
                                                    ?>">
                                               <input type="hidden" id="admitid" name="admitid"
                                                    value="<?php echo $collectfees->get_admitid(); ?>">
                                                    <input type="hidden" id="courseid" name="courseid"
                                                    value="<?php echo $collectfees->get_courseid(); ?>">
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
                                            <label for="phone" class="col-md-6 control-label">Phone</label>
                                            <div class="col-sm-12">
                                                <input type="tel" id="phone" placeholder="Phone" name="phone"
                                                    class="form-control" value="<?php
                                                    echo $collectfees->get_phone();
                                                    ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="tfees" class="col-md-6 control-label">Total fees</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="tfees" name="tfees"
                                                    class="form-control" required value="<?php echo $collectfees->get_tfees() ?>" >
                                            </div>
                                        </div>
                                        <br />
                                        
                                        <div class="col-md-6">
                                            <label for="pfees" class="col-md-6 control-label">Fees Paid</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="pfees" name="pfees"
                                                    class="form-control" required value="<?php echo $collectfees->get_pfees() ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="pendingfees" class="col-md-6 control-label">Pending Fees</label>
                                            <div class="col-sm-12">
                                                  <input type="text" id="pendingfees" name="pendingfees"
                                                    class="form-control" required 
                                                    value="<?php echo $collectfees->get_pendingfees() ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="feesplan" class="col-md-6 control-label">Fees Plan</label>
                                            <div class="col-sm-12">
                                                <select class="form-select" id="feesplan" name="feesplan"
                                                    required>
                                                    <option value="">Fees Plan</option>
                                                    <option value="Part Payment">Part Payment</option>
                                                    <option value="Full Payment">Full Payment</option>
                                                </select>
                                            </div>
                                        </div>
                                        <br />
                                        

                                        <div id="duedatediv" class="col-md-6"  style="display: none">
                                             <label for="duedate" class="col-md-6 control-label"> Next payment on:</label> 
                                               <div class="col-sm-12"   >
                                                 <input type="date" id="duedate" name="duedate"
                                                    class="form-control" required/>
                                               </div>
                                        </div>
                                        <br/>

                                        <div class="col-md-6">
                                            <label for="pmode" class="col-md-6 control-label">Payment Mode</label>
                                            <div class="col-sm-12">
                                                <select class="form-select" id="pmode" name="pmode"
                                                    required>
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
                                            <label for="pdescription" class="col-md-6 control-label">Payment Description</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="pdescription" name="pdescription"
                                                    placeholder="Payment Description" class="form-control" required>
                                            </div>
                                        </div>
                                        <br/>
                                       
                                        <div>
                                        <button class="btn btn-success" id="btn"type="submit" name="submit">Update</button>
                                        <br />
                                    </div>
                                </form>
                                </br>
                            </div>
                        </div>
                    </div>
                    <div>
                        <br/></br>
            <table class="enquiries center" id="feepaymentlist">
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
                   $feesdetails= DBfees::viewfeesdetails($id);                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
                   foreach($feesdetails as $fees) 
                   {
                       echo "<tr><td> "  .  $fees->get_modifieddate(). "</td><td>"  . $fees->get_pfees(). "</td><td>". $fees->get_pendingfees(). "</td><td>" .$fees->get_pmode(). "</td><td>"
                       .'<a class="btn btn-danger" id="feereceipt" name="feereceipt" href="../../Admin/uploads/Fee Receipts/'.$fees->get_feereceipt().'" role="button" download>Fee Receipt </a>'.'</td></tr>' ;
                   }
                   echo  "</tbody>";
                   ?>
                        </table>
            </div>
                </div>
            </div>
            
        </div>
          <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        
            <script>
                $(document).ready(function()
                 {
                    $("#myForm :input").prop("disabled", true);
                    $('input[type=radio][name=options]').click(function() {
                        $('#myForm :input').prop('disabled', false);
                       if(!parseInt($('#tfees').val())){
                        $('#tfees').focus();
                        $('#pfees').attr('disabled',true);
                       }else{
                        $('#tfees').attr('readonly', true);
                       }
                    });
                    
                        $("#feesplan").change(function () {
                            
                            if ($(this).val() == "Part Payment") {
                                $("#duedatediv").show();
                                var today = new Date();
                                var dd = String(today.getDate()).padStart(2, '0');
                                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                                var yyyy = today.getFullYear();

                                today = yyyy + '-' + mm + '-' + dd;

                                $("#duedate").attr("min",today);
                                $("#duedate").attr('disabled', false);
                                $("#btn").attr("disabled", false);
                            } else {
                               debugger;
                                if(parseInt($("#pfees").val()) > 0 &&  parseInt($("#pendingfees").val()) != 0){
                                    $("#btn").attr("disabled", true);
                                    alert("Fees is still due");
                                }
                                
                                $("#duedate").attr('disabled', true);
                            }
                        });

                        $("#tfees").change(function()  {
                             if (parseInt ($(this).val())>0){
                                $('#pfees').attr('disabled',false);
                            }
                        });
                        
                        $("#pfees").change(function()  {
                             if (parseInt ($(this).val()) < parseInt($("#tfees").val())){
                                if( $("#pendingfees").val() == 0){
                                    var pendingfees=$("#tfees").val()- $("#pfees").val();
                                }else {
                                    var pendingfees=$("#pendingfees").val()- $("#pfees").val();
                               
                                }
                                $("#pendingfees").val(pendingfees);
                            }
                        
                           
                        });
                     
                        
                   
                });
            </script>
                


    </body>


</html>