<?php
require "../DB Operations/dbconnection.php";
    class DBcourse
    {
      public static function insert($courseObj)
      {
        $db=ConnectDb::getInstance();
        $connectionObj=$db->getConnection();
         $sql = "insert into courses (`CName`, `Ctype`, `Cduration`) 
                values ('".$courseObj->get_cname()."','".$courseObj->get_ctype()."','".$courseObj->get_cduration()."')";
                
                if ($connectionObj->query($sql) === TRUE) {
        } else {
          echo "Error: " . $sql . "<br>" . $connectionObj->error;
        }
        
      }
    }