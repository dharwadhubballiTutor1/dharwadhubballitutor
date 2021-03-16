<?php
require "../Admin/Model/EnqueryModel.php";
class DBenquery{

    public static function getAllEnquery($enqueryFor){
            $db=ConnectDb::getInstance();
            $connectionObj=$db->getConnection();
            $sql = "SELECT * FROM candidates WHERE ".$enqueryFor."!=''";
            $result = mysqli_query($connectionObj, $sql);
            $enquirylist=[];
                if (mysqli_num_rows($result) > 0) {
                  
                while($row = mysqli_fetch_assoc($result)) {
                    $enqueryModel=new enquery();
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
}


?>