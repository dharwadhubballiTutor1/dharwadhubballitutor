<?php
// require "../Admin/session.php";
require_once "../../DB Operations/dbconnection.php";
require_once "../../Admin/Model/Admissionsmodel.php";


    class DBfees
    {
      public static function insert($feesObj)
      {
        $db=ConnectDb::getInstance();
        $connectionObj=$db->getConnection();
         $sql = "insert into fees (`TotalFees`, `PaidFees`, `Feesplan`,`DueDate`,`PaymentMode`,`PaymentDescription`) 
                values ('".$feesObj->get_tfees()."','".$feesObj->get_pfees()."','".$feesObj->get_feesplan()."','".$feesObj->get_duedate()."','".$feesObj->get_pmode()."','".$feesObj->get_pdescription()."')";
                
                if ($connectionObj->query($sql) === TRUE) {
        } else {
          echo "Error: " . $sql . "<br>" . $connectionObj->error;
        }
        
      }
      
    public static function searchadmission()
    {
         $db=ConnectDb::getInstance();
         $connectionObj=$db->getConnection();
         
         $searchadmission="";
         if (isset($_POST['submit']))
         $searchadmission=$_POST["search"];
         echo $searchadmission;
         $sql = "SELECT id,Name,CoursesOpted,PhotoFile From admissions where Name like '%$searchadmission%' and feesstatus=1 ";
         $result = mysqli_query($db->getConnection(), $sql);
         $admissionlist=[];
         if (mysqli_num_rows($result) > 0) {
         while($row = mysqli_fetch_assoc($result)) {
          $view=new Admissions();
          $view->set_id($row['id']);
          $view->set_name($row['Name']);
           $view->set_coursesopted($row['CoursesOpted']);
        
          array_push($admissionlist,$view);
     } 
     } else {
      echo "0 results";
      }
      return $admissionlist;
    }
    public static function collectionoffees($viewObj)
    {
      $db=ConnectDb::getInstance();
      $connectionObj=$db->getConnection();
       $sql = "select Name,CoursesOpted,Photofile from admissions where id=$viewObj and feesstatus=1";
       $result = mysqli_query($db->getConnection(), $sql);
       $view= new Admissions();
       if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result) ;
        
         $view->set_name($row['Name']);
         $view->set_coursesopted($row['CoursesOpted']);
      
   } else {
     $view=NULL;

   } 
   return $view;
    }
   }