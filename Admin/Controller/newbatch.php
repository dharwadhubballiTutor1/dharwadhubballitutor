<?php
require_once "../session.php";

require_once "../model/Batchmodel.php";
require_once "../Utilities/Sanitization.php";
require_once "../DB Operations/BatchOps.php";


if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $batch1 = new batch();
  if (!empty($_POST["Batchid"])) {
   $batch1->setBatchid(Sanitization::test_input($_POST["Batchid"]));
  $batch1->setBatchname(Sanitization::test_input($_POST["Batchname"]));
  $batch1->setTrainername(Sanitization::test_input($_POST["Trainername"]));
  $batch1->setStartDate(Sanitization::test_input($_POST["StartDate"]));
  $batch1-> setEndDate(Sanitization::test_input($_POST["EndDate"]));
  $batch1->setCreatedBy(Sanitization::test_input($_POST["CreatedBy"]));
  $batch1->setModifiedDate(Sanitization::test_input($_POST["ModifiedDate"]));
  $batch1->setModifiedBy(Sanitization::test_input($_POST["ModifiedBy"]));
  $batch1->setCreatedDate(Sanitization::test_input($_POST["createdDate"]));
  } else {
    $batch1->set_Batchid(0);
  }

 

  DBbatch::insert($batch1);

  
}
?>
<html>


<body>
  <?php
  header("location:../View/batches.php");
  ?>


</body>

</html>