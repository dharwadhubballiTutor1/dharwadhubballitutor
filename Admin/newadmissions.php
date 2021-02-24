<?php

require "../Model/Admissionsmodel.php";
require "../Utilities/Sanitization.php";
// require "navbar.php";

require "../DB Operations/AdmissionsOps.php";

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
    $admit->set_adhaarfile(Sanitization::test_input($_POST["adhaarfile"]));
    $admit->set_photofile(Sanitization::test_input($_POST["photofile"]));
    DBadmission::insert($admit); 
  }
  
?>