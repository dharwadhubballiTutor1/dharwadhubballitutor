<?php
// require "../Admin/session.php";
require_once "../../DB Operations/dbconnection.php";
require_once "../Model/followupmodel.php";
class DBfollow
{
  public static function getFollowUpByEnqId($enqId)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "SELECT * FROM enquiry_followup WHERE followup_enq_id=$enqId";
    $result = $connectionObj->query($sql);
    $followUpList = [];
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $followUp = new Enqfollowup();
            // $followUp->set_followid($row['followupid']);
            $followUp->set_followenqid($row['followup_enq_id']);
            $followUp->set_followcomment($row['followup_comments']);
            $followUp->set_followupBy($row['followup_by']);
            $followUp->set_followupOn(date('d-m-Y', strtotime($row['followup_createdon'])));
            array_push($followUpList, $followUp);
        }
    }
        return $followUpList;
    }
  public static function insert($followObj)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "insert into enquiry_followup (`followup_enq_id`, `followup_comments`, `followup_by`) 
                values ('" . $followObj->get_followenqid() .
      "','" . $followObj->get_followcomment() .
      "','" . $followObj->get_followupBy() . "')";

    if ($connectionObj->query($sql) === TRUE) {
    } else {
      echo "Error: " . $sql . "<br>" . $connectionObj->error;
    }
  }

  public static function getAllEnqfollowup($viewObj)
  {
    $db=ConnectDb::getInstance();
    $connectionObj=$db->getConnection();
    
       $sql="Select C.id,followup_comments,followup_createdon,followup_by,followup_enq_id from candidates as C
       LEFT JOIN enquiry_followup as F on C.id=F.followup_enq_id
        where C.id=(".$viewObj.")";
// echo $sql;
        $view= new Enqfollowup();
        $result=mysqli_query($db->getConnection(), $sql);
        if (mysqli_num_rows($result) > 0){
          while($row = mysqli_fetch_assoc($result)) {
            $view->set_followenqid($row['followup_enq_id']);
            $view->set_followcomment($row['followup_comments']);
            $view->set_followupBy($row['followup_by']);
            $view->set_followupOn(date('d-m-Y', strtotime($row['followup_createdon'])));
          }
        }else {
          $view=NULL;
        }
        return $view;
  }
}