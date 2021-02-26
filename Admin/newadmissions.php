<?php

require "../Admin/Model/Admissionsmodel.php";
require "../Utilities/Sanitization.php";
require "../Admin/Utilities/Helper.php";
// require "../Admin/navbar.php";

require "../Admin/DB Operations/AdmissionsOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $admit=new Admissions();
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
    $filetoupload=$_FILES["photofile"];
    Helper::fileupload($filetoupload);
    $admit->set_adhaarfile($_FILES["adhaarfile"]['name']);
    $admit->set_photofile($_FILES["photofile"]['name']);
    DBadmission::insert($admit); 
  }
  
?>
<html>
<head> <title> New Admission </title>
</head>
<body>



</body>
</html>
