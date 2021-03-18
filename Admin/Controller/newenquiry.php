<?php

require "../../Model/Registration.php";
require "../Utilities/Sanitization.php";
include "../../Admin/DB Operations/enqueryOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $reg=new Registration();
    $reg->set_name(Sanitization::test_input($_POST["name2"]));
    $reg->set_email(Sanitization::test_input($_POST["email2"]));
    $reg->set_phone(Sanitization::test_input($_POST["phone2"]));
    $reg->set_trainings(Sanitization::test_input($_POST["trainings2"]));
    $reg->set_internship(Sanitization::test_input($_POST["internship2"]));
    DBenquery::insert($reg); 
  }
  
?>
<html>

<head>
    <title> New Admission </title>
</head>

<body>
    <?php 
header("location:../enquiries.php");
?>


</body>

</html>