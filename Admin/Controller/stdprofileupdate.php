<?php
require "session.php";
require "../../Admin/Model/Admissionsmodel.php";
require "../../Utilities/Sanitization.php";
require "../../Admin/Utilities/Helper.php";
//require "../Admin/navbar.php";
require "../../Admin/DB Operations/AdmissionsOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST")
  {
    $admit=new Admissions();
    $admit->set_id(Sanitization::test_input($_POST["id"]));
    $admit->set_name(Sanitization::test_input($_POST["name"]));
    $admit->set_phone(Sanitization::test_input($_POST["phone"]));
    $admit->set_email(Sanitization::test_input($_POST["email"]));
    $admit->set_dateofbirth(Sanitization::test_input($_POST["dateofbirth"]));
    $admit->set_qualification(Sanitization::test_input($_POST["qualification"]));
    $admit->set_guardiansname(Sanitization::test_input($_POST["guardiansname"]));
    $admit->set_guardiansphone(Sanitization::test_input($_POST["guardiansphone"]));
    $admit->set_coursesopted(Sanitization::test_input($_POST["coursesopted"]));
    $admit->set_address(Sanitization::test_input($_POST["address"]));
    $admit->set_adhaarno(Sanitization::test_input($_POST["adhaarno"]));
    $filetoupload=$_FILES["adhaarfile"];
    Helper::fileupload($filetoupload);
    $filetoupload=$_FILES["resume"];
    Helper::fileupload($filetoupload);
    $admit->set_adhaarfile($_FILES["adhaarfile"]['name']);
    $admit->set_resume($_FILES["resume"]['name']);
    DBadmission::updateadmission($admit);
  }
?>
<html>
    <head>
        <title> Updated Information </title>
        <style>
        .h2 {

            text-align: center;
            color: #2a0a5e;
            margin-top: 3rem;
        }
        </style>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <div class="container">
                        <h2 class="h2">
                            <?php
   $status=DBadmission::updateadmission($admit);
   if ($status===TRUE)
   {
     echo "record updated successfully";
     header("location:admissions.php");
   }else{
     echo "error in updating record";
   }
      ?> 
      </h2>
    </body>
</html>