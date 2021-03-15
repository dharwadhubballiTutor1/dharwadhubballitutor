<?php

    class DBtrainer
    {
      public static function insert($admissionObj)
      {
        // $db=ConnectDb::getInstance();
        // $connectionObj=$db->getConnection();
         $sql = "insert into trainers (`Name`, `Phone`, `Email`,`Qualification`,`Coursesassigned`,`Address`,`AdhaarNo`,`AdhaarFile`,`PhotoFile`) 
                values ('".$admissionObj->get_name()."','".$admissionObj->get_phone()."','".$admissionObj->get_email()."', '".$admissionObj->get_qualification()."','".$admissionObj->get_coursesassigned()."','".$admissionObj->get_address()."','".$admissionObj->get_adhaarno()."','".$admissionObj->get_adhaarfile()."','".$admissionObj->get_photofile()."')";
                
                if ($connectionObj->query($sql) === TRUE) {
        } else {
          echo "Error: " . $sql . "<br>" . $connectionObj->error;
        }
        
      }
    }