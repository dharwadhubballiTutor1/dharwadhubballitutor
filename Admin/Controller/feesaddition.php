<?php
require_once "../session.php";
require_once "../Model/Feesmodel.php";
require_once "../Utilities/Sanitization.php";

//require "../Admin/navbar.php";
require_once "../DB Operations/FeesOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST")
  {
    $admit=new Fees();
    $admit->set_tfees(Sanitization::test_input($_POST["tfees"]));
    $admit->set_pfees(Sanitization::test_input($_POST["pfees"]));
    $admit->set_feesplan(Sanitization::test_input($_POST["feesplan"]));
    $admit->set_duedate(Sanitization::test_input($_POST["duedate"]));
    $admit->set_pmode(Sanitization::test_input($_POST["pmode"]));
    $admit->set_pdescription(Sanitization::test_input($_POST["pdetails"]));
    DBfees::insert($admit);
  }
?>
<html>

    <head>
        <title> New Admission </title>
    </head>

    <body>
        <?php 
        //  header("location:../View/admissions.php");
?>


    </body>

</html>