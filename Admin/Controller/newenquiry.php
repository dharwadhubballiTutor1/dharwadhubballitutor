<?php
require "../../Model/Registration.php";
require "../Utilities/Sanitization.php";
include "../../Admin/DB Operations/enqueryOps.php";
include "../../Admin/DB Operations/notificationOps.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (isset($_POST['id'])) {
    $reg = new Registration();
    $reg->set_id(Sanitization::test_input($_POST["id"]));
    $reg->set_name(Sanitization::test_input($_POST["name2"]));
    $reg->set_email(Sanitization::test_input($_POST["email2"]));
    $reg->set_phone(Sanitization::test_input($_POST["phone2"]));
    $reg->set_Source(Sanitization::test_input($_POST["source"]));

    $reg->set_trainings(Sanitization::test_input($_POST["trainings2"]));
    $reg->set_demo(Sanitization::test_input($_POST["democlass"]));
    $reg->set_internship(Sanitization::test_input($_POST["internship2"]));
    $reg->set_services(Sanitization::test_input($_POST["services"]));

    DBenquery::update($reg);
  } else {
    $reg = new Registration();
    $reg->set_name(Sanitization::test_input($_POST["name2"]));
    $reg->set_email(Sanitization::test_input($_POST["email2"]));
    $reg->set_phone(Sanitization::test_input($_POST["phone2"]));
    $reg->set_Source(Sanitization::test_input($_POST["source"]));

    $reg->set_trainings(Sanitization::test_input($_POST["trainings2"]));
    $reg->set_demo(Sanitization::test_input($_POST["democlass"]));
    $reg->set_internship(Sanitization::test_input($_POST["internship2"]));
    $reg->set_services(Sanitization::test_input($_POST["services"]));


    // $message=new sms();
    // $message->setNumbers($reg->get_phone());
    // $message->setMessage('Thank you %%|name^{"inputtype" : "text",
    //   "maxlength" : "30"}%%,
    //   for enquiring with DharwadHubballiTutor.
    //   For any further assistance please feel free to reach us on below contact information
    //   +91-9741237334 +91-8007961759
    //   www.dharwadhubballitutor.com');        
    // $message->sendSMS(); 

    DBenquery::insert($reg);

    $notification = new Notification();
    $notification->setStatus('1');

    if (!empty($_POST['trainings2'])) {
      $notification->setMessage('There Has Been an enquiry for Training');
      $notification->setCategory('training');
    } else if (!empty($_POST['internship2'])) {
      $notification->setMessage('There Has Been an enquiry for Internship');
      $notification->setCategory('internship');
    } else if (!empty($_POST['services'])) {
      $notification->setMessage('There Has Been an enquiry for Services');
      $notification->setCategory('services');
    } else if (!empty($_POST['democlass'])) {
      $notification->setMessage('There Has Been an enquiry for democlass');
      $notification->setCategory('democlass');
    }
    DBnotification::insert($notification);
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