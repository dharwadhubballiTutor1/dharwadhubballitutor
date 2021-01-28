<?php
require "DB Operations/dbconnection.php";
    class DBregistration
    {
      public static function insert($registrationObj)
      {
        $db=ConnectDb::getInstance();
        $connectionObj=$db->getConnection();
         $sql = "insert into candidates (`Name`, `Email`, `Phone`, `Trainings`,`Internship`,`Services`) 
                values ('".$registrationObj->get_name()."','".$registrationObj->get_email()."',".$registrationObj->get_phone().",'".$registrationObj->get_trainings()."', '".$registrationObj->get_internship()."','".$registrationObj->get_services()."')";
                
                if ($connectionObj->query($sql) === TRUE) {
        } else {
          echo "Error: " . $sql . "<br>" . $connectionObj->error;
        }
        
    }
  }
?>