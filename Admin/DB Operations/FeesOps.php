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
         $sql = "insert into fees (`Admissionid`,`Courseid`,`TotalFees`, `PaidFees`,`PendingFees`, `Feesplan`,`DueDate`,`PaymentMode`,`PaymentDescription`) 
                values ('".$feesObj->get_admitid()."','".$feesObj->get_courseid()."','".$feesObj->get_tfees()."','".$feesObj->get_pfees()."','".$feesObj->get_pendingfees()."','".$feesObj->get_feesplan()."','".$feesObj->get_duedate()."','".$feesObj->get_pmode()."','".$feesObj->get_pdescription()."')";
                
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
      
         $sql="Select A.id, A.Courseid, Name, CoursesOpted , TotalFees, SUM(PaidFees) as PaidFees,  PendingFees from admissions as A 
         LEFT JOIN fees as F on A.id=F.Admissionid
          where A.id=(".$viewObj.")
          GROUP BY Name,CoursesOpted,TotalFees,PaidFees,PendingFees";
          $view= new Fees();
          $result=mysqli_query($db->getConnection(), $sql);
          if (mysqli_num_rows($result) > 0){
            while($row = mysqli_fetch_assoc($result)) {
              
              $view->set_tfees($row['TotalFees']);
              $view->set_admitid($row['id']);
              $view->set_courseid($row['Courseid']);
              $view->set_pfees($row['PaidFees']);
              $view->set_name($row['Name']);
              $view->set_coursesopted($row['CoursesOpted']);
              $view->set_pendingfees($row["PendingFees"]);
              
            }
          }else {
            $view=NULL;
          }
          return $view;
  
        }
      
    

   }