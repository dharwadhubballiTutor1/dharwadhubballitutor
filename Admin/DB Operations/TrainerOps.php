<?php

    class DBtrainer
    {
      public static function insert($admissionObj)
      {
        $db=ConnectDb::getInstance();
        $connectionObj=$db->getConnection();
        
         $sql = "insert into trainers (`Name`, `Phone`, `Email`,`Qualification`,`Address`,`AdhaarNo`,`AdhaarFile`,`PhotoFile`) 
                values ('".$admissionObj->get_name()."','".$admissionObj->get_phone()."','".$admissionObj->get_email()."', '".$admissionObj->get_qualification()."','".$admissionObj->get_address()."','".$admissionObj->get_adhaarno()."','".$admissionObj->get_adhaarfile()."','".$admissionObj->get_photofile()."')";
                
                if ($connectionObj->query($sql) === TRUE) {
                  $last_id = $connectionObj->insert_id;
                  $cselected= implode(',',$_POST['coursesassigned']);
                  foreach( $_POST['coursesassigned'] as $courses) {
                    $sql="insert into trainercoursemapping(`trainerid`,`courseid`) values (".$last_id.",".$courses.")";
                    echo $sql;
                    $connectionObj->query($sql);
                  }
        } else {
          echo "Error: " . $sql . "<br>" . $connectionObj->error;
        }
      }
      
    }
?>