<?php
// require "../Admin/session.php";
require_once "../../DB Operations/dbconnection.php";

require_once "../../Admin/Model/EnqueryModel.php";
class DBenquery{

  public static function getAllEnquery(){
    $db=ConnectDb::getInstance();
    $connectionObj=$db->getConnection();
    $sql = "SELECT * FROM candidates where status=0" ;
    $result = mysqli_query($connectionObj, $sql);
    $enquirylist=[];
        if (mysqli_num_rows($result) > 0) {
          
        while($row = mysqli_fetch_assoc($result)) {
            $enqueryModel=new enquery();
            $enqueryModel->set_Id($row["id"]);
            $enqueryModel->set_name($row["Name"]);
            $enqueryModel->set_email($row["Email"]);
            $enqueryModel->set_phone($row["Phone"]);
            $enqueryModel->set_qualification($row["Qualification"]);
            array_push($enquirylist,$enqueryModel);
        }
        
        } else {
             echo "0 results";
        }
        return $enquirylist;
}
    public static function getAllEnqueryBySection($enqueryFor){
            $db=ConnectDb::getInstance();
            $connectionObj=$db->getConnection();
            $sql = "SELECT * FROM candidates WHERE status=0 and ".$enqueryFor."!=''";
            $result = mysqli_query($connectionObj, $sql);
            $enquirylist=[];
                if (mysqli_num_rows($result) > 0) {
                  
                while($row = mysqli_fetch_assoc($result)) {
                    $enqueryModel=new enquery();
                    $enqueryModel->set_Id($row["id"]);
                    $enqueryModel->set_name($row["Name"]);
                    $enqueryModel->set_phone($row["Email"]);
                    $enqueryModel->set_phone($row["Phone"]);
                    $enqueryModel->set_qualification($row["Qualification"]);
                    $enqueryModel->set_enqueryFor($row["$enqueryFor"]);
                    array_push($enquirylist,$enqueryModel);
                }
                
                } else {
                     echo "0 results";
                }
                return $enquirylist;
    }
    public static function insert($registrationObj)
      {
        $db=ConnectDb::getInstance();
        $connectionObj=$db->getConnection();
         $sql = "insert into candidates (`Name`, `Email`, `Phone`, `Trainings`,`Internship`,`Services`,`Demo`,`Qualification`) 
                values ('".$registrationObj->get_name()."','".$registrationObj->get_email()."','".$registrationObj->get_phone()."','".$registrationObj->get_trainings()."', '".$registrationObj->get_internship()."','".$registrationObj->get_services()."','".$registrationObj->get_demo()."','".$registrationObj->get_qualification()."')";
                
                if ($connectionObj->query($sql) === TRUE) {
        } else {
          echo "Error: " . $sql . "<br>" . $connectionObj->error;
        }
        
    }
}


?>