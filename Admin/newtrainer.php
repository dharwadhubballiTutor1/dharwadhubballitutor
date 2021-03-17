<?php
require "session.php";
require "../Admin/Model/Trainermodel.php";
require "../Utilities/Sanitization.php";
require "../Admin/Utilities/Helper.php";
// require "../Admin/navbar.php";

require "../Admin/DB Operations/TrainerOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST")
  {
    $admit=new Trainer();
    $admit->set_name(Sanitization::test_input($_POST["name"]));
    $admit->set_phone(Sanitization::test_input($_POST["phone"]));
    $admit->set_email(Sanitization::test_input($_POST["email"]));
    $admit->set_qualification(Sanitization::test_input($_POST["qualification"]));
    $admit->set_coursesassigned($_POST["coursesassigned"]);
    $admit->set_address(Sanitization::test_input($_POST["address"]));
    $admit->set_adhaarno(Sanitization::test_input($_POST["adhaarno"]));
    $filetoupload=$_FILES["adhaarfile"];
    Helper::fileupload($filetoupload);
    $filetoupload=$_FILES["photofile"];
    Helper::fileupload($filetoupload);
    $admit->set_adhaarfile($_FILES["adhaarfile"]['name']);
    $admit->set_photofile($_FILES["photofile"]['name']);
    DBtrainer::insert($admit);
  }
?>
<html>

    <head>
        <title> New Admission </title>
    </head>

    <body>
        <?php 
//  header("location:admissions.php");
?>


    </body>

</html>