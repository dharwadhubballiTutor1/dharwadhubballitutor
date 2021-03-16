<?php
//require "../DB Operations/dbconnection.php";

    class DBadmission
    {
      public static function insert($admissionObj)
      {
        $db=ConnectDb::getInstance();
        $connectionObj=$db->getConnection();
         $sql = "insert into admissions (`Name`, `Phone`, `Email`, `DateofBirth`,`Gender`,`Qualification`,`Guardians_Name`,`Guardians_Phone`,`CoursesOpted`,`Address`,`AdhaarNo`,`AdhaarFile`,`PhotoFile`,`Resume`) 
                values ('".$admissionObj->get_name()."','".$admissionObj->get_phone()."','".$admissionObj->get_email()."','".$admissionObj->get_dateofbirth()."','".$admissionObj->get_gender()."', '".$admissionObj->get_qualification()."','".$admissionObj->get_guardiansname()."','".$admissionObj->get_guardiansphone()."','".$admissionObj->get_coursesopted()."','".$admissionObj->get_address()."','".$admissionObj->get_adhaarno()."','".$admissionObj->get_adhaarfile()."','".$admissionObj->get_photofile()."','".$admissionObj->get_resume()."')";
                
                if ($connectionObj->query($sql) === TRUE) {
        } else {
          echo "Error: " . $sql . "<br>" . $connectionObj->error;
        }
        
      }

    public static function viewadmission($viewObj)
    {
      $db=ConnectDb::getInstance();
      $connectionObj=$db->getConnection();
       $sql = "select * from admissions where id=$viewObj";
       $result = mysqli_query($db->getConnection(), $sql);
       $view= new Admissions();
       if (mysqli_num_rows($result) > 0) {
        $row = mysqli_fetch_assoc($result) ;
        $view->set_id($row['id']);
         $view->set_name($row['Name']);
         $view->set_phone($row['Phone']);
         $view->set_email($row['Email']);
         $view->set_dateofbirth($row['DateofBirth']);
         $view->set_gender($row['Gender']);
         $view->set_qualification($row['Qualification']);
         $view->set_guardiansname($row['Guardians_Name']);
         $view->set_guardiansphone($row['Guardians_Phone']);
         $view->set_coursesopted($row['CoursesOpted']);
         $view->set_address($row['Address']);
         $view->set_adhaarno($row['AdhaarNo']);
         $view->set_adhaarfile($row['AdhaarFile']);
         $view->set_photofile($row['PhotoFile']);
         $view->set_resume($row['Resume']);
        
         
   } else {
     $view=NULL;

   } 
   return $view;
    }
  public static function search()
  {
       $db=ConnectDb::getInstance();
       $connectionObj=$db->getConnection();
       $search="";
       if (isset($_POST['submit']))
       $search=$_POST["search"];
       $sql = "SELECT id,Name,Email,Phone,Qualification From candidates where Name like '%$search%' ";
       $result = mysqli_query($db->getConnection(), $sql);
       $enquirylist=[];
       if (mysqli_num_rows($result) > 0) {
       while($row = mysqli_fetch_assoc($result)) {
        $view=new Admissions();
        $view->set_id($row['id']);
        $view->set_name($row['Name']);
        $view->set_phone($row['Phone']);
        $view->set_email($row['Email']);
        $view->set_qualification($row['Qualification']);
        array_push($enquirylist,$view);
  } 
} else {
    echo "0 results";
  }
  
  return $enquirylist;

  }

  public static function searchadmission()
  {
       $db=ConnectDb::getInstance();
       $connectionObj=$db->getConnection();
       
       $searchadmission="";
       if (isset($_POST['submit']))
       $searchadmission=$_POST["search"];
       echo $searchadmission;
       $sql = "SELECT id,Name,Email,Phone,Qualification,Guardians_Phone,CoursesOpted,AdhaarNo,PhotoFile From admissions where Name like '%$searchadmission%' ";
       $result = mysqli_query($db->getConnection(), $sql);
       $admissionlist=[];
       if (mysqli_num_rows($result) > 0) {
       while($row = mysqli_fetch_assoc($result)) {
        $view=new Admissions();
        $view->set_id($row['id']);
        $view->set_name($row['Name']);
        $view->set_phone($row['Phone']);
        $view->set_email($row['Email']);
        $view->set_qualification($row['Qualification']);
        $view->set_guardiansphone($row['Guardians_Phone']);
         $view->set_coursesopted($row['CoursesOpted']);
         $view->set_adhaarno($row['AdhaarNo']);
         $view->set_photofile($row['PhotoFile']);
        array_push($admissionlist,$view);
  } 
} else {
    echo "0 results";
  }
  return $admissionlist;
  }
    public static function selectall()
    {
      $db=ConnectDb::getInstance();
      $connectionObj=$db->getConnection();
      $sql = 'SELECT * FROM admissions';
      $result = mysqli_query($db->getConnection(), $sql);
      $admissionlist=[];
      if (mysqli_num_rows($result) > 0) {
      while($row = mysqli_fetch_assoc($result)) {
        $view=new Admissions();
        $view->set_id($row['id']);
        $view->set_name($row['Name']);
        $view->set_phone($row['Phone']);
        $view->set_email($row['Email']);
        $view->set_dateofbirth($row['DateofBirth']);
        $view->set_qualification($row['Qualification']);
        $view->set_guardiansname($row['Guardians_Name']);
        $view->set_guardiansphone($row['Guardians_Phone']);
        $view->set_coursesopted($row['CoursesOpted']);
        $view->set_address($row['Address']);
        $view->set_adhaarno($row['AdhaarNo']);
        $view->set_adhaarfile($row['AdhaarFile']);
        $view->set_photofile($row['PhotoFile']);
        $view->set_resume($row['Resume']);
        array_push($admissionlist,$view);
      }
      } else {
      echo "0 results";
    }
    return $admissionlist;
    }
    public static function updateadmission($admission)
    {
      $db=ConnectDb::getInstance();
      $connectionObj=$db->getConnection();
      $status=true;
      $sql = "UPDATE admissions SET Name='".$admission->get_name()."', Phone='".$admission->get_phone()."', Email='".$admission->get_email()."', DateofBirth='".$admission->get_dateofbirth()."',Qualification='".$admission->get_qualification()."',Guardians_Name='".$admission->get_guardiansname()."', Guardians_Phone='".$admission->get_guardiansphone()."',CoursesOpted='".$admission->get_coursesopted()."',Address='".$admission->get_address()."',AdhaarNo='".$admission->get_adhaarno()."',AdhaarFile='".$admission->get_adhaarfile()."',Resume='".$admission->get_resume()."' where id='".$admission->get_id()."' " ;
      $result = mysqli_query($db->getConnection(), $sql);
      if ($connectionObj->query($sql) === TRUE)
      {
         return $status=true;
      } else {
        return $status=false;
      }
    }
  }
    ?>


