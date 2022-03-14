<?php

require "../../Model/Registration.php";
require "../Utilities/Sanitization.php";
include "../../Admin/DB Operations/enqueryOps.php";
require_once "../Model/smsModel.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST") {
      if (isset($_POST['id'])) {
          $reg=new Registration();
          $reg->set_id(Sanitization::test_input($_POST["id"]));
          $reg->set_name(Sanitization::test_input($_POST["name2"]));
          $reg->set_email(Sanitization::test_input($_POST["email2"]));
          $reg->set_phone(Sanitization::test_input($_POST["phone2"]));
          $reg->set_trainings(Sanitization::test_input($_POST["trainings2"]));
          $reg->set_internship(Sanitization::test_input($_POST["internship2"]));
          $reg->set_demo(Sanitization::test_input($_POST["demo2"]));
          $reg->set_services(Sanitization::test_input($_POST["services"]));
          DBenquery::update($reg);
      } else {
          $reg=new Registration();
          $reg->set_name(Sanitization::test_input($_POST["name2"]));
          $reg->set_email(Sanitization::test_input($_POST["email2"]));
          $reg->set_phone(Sanitization::test_input($_POST["phone2"]));
          $reg->set_trainings(Sanitization::test_input($_POST["trainings2"]));
          $reg->set_internship(Sanitization::test_input($_POST["internship2"]));
          $reg->set_demo(Sanitization::test_input($_POST["demo2"]));
          $reg->set_services(Sanitization::test_input($_POST["services"]));
          // $message=new sms();
          // $message->setNumbers($reg->get_phone());
          // $message->setMessage('Thank you %%|name^{"inputtype" : "text",
          //   "maxlength" : "30"}%%,
          //   for enquiring with DharwadHubballiTutor.
          //   For any further assistance please feel free to reach us on below contact information
          //   +91-9741237334 +91-8007961759
          //   www.dharwadhubballitutor.com');
          DBenquery::insert($reg);
          // $message->sendSMS();
          
      }
  }
  
?>
<html>

<head>
</head>

<body>
    <?php 
header("location:../View/enquiries.php");
?>


</body>

</html>