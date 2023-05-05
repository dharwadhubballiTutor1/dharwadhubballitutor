<?php
require_once "../../DB Operations/dbconnection.php";
require_once "../../Admin/model/Batchmodel.php";

class DBbatch
{
  public static function insert($batchObj)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();

    $sql = "insert into batch (`Batchid`,`Batchname`,`Trainername
            `, `StartDate`,`EndDate `, `CreatedBy `,`ModifiedBy`,`CreatedDate`,`ModifiedDate`) 
values ('" . $batchObj->getBatchid() . "','" . $batchObj->getBatchname() . "','" . $batchObj->getTrainername() . "','" . $batchObj->getStartDate() . "','" . $batchObj->getEndDate() . "','" . $batchObj->getCreatedBy() . "','" . $batchObj->getModifiedBy() . "','" . $batchObj->getCreatedDate() . "','" . $batchObj->getModifiedDate() . "')";

    if ($connectionObj->query($sql) === TRUE) {
      if ($batchObj->get_enqueryId() > 0) {
        $sql = "Update candidates Set status=0 where id=" . $batchObj->get_batchid();
        $result = mysqli_query($db->getConnection(), $sql);
        if ($result) {
          echo "Record updated successfully";
        } else {
          echo "Error updating record: " . $connectionObj->error;
        }
      }
    } else {
      echo "Error: " . $sql . "<br>" . $connectionObj->error;
    }
  }
  public static function viewbatch()
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "select * from batch JOIN trainers on batch.trainerid=trainers.id";
    $result = mysqli_query($db->getConnection(), $sql);
    $batchList=[];
    if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $view = new Batch();
        $view->setBatchid($row['Batchid']);
        $view->setBatchname($row['NameofBatch']);
        $view->setTrainername($row['Trainername']);
        $view->setStartDate($row['StartDate']);
        $view->setEndDate($row['EndDate']);
        $view->setCreatedBy($row['CreatedBy']);
        $view->setModifiedBy($row['ModifiedBy']);
        $view->setModifiedDate(date('d.m.y', strtotime($row['Modified_Date'])));
        $view->setCreatedDate(date('d-m-y', strtotime($row["createddate"])));
        array_push($batchList,$view);
        error_log($sql);
      }

    } 
    return $batchList;
  }


  
  
  public static function updatebatch($batch)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $status = true;
    $sql = "UPDATE batch SET Batchid='" . $batch->get_batchid() .
      "',NameofBatch ='" . $batch->getNameofBatch() .
      "', Trainerid='" . $batch->getTrainerid() .
      "', CreatedBy='" . $batch->setCreatedBy() .
      "',ModifiedBy='" . $batch->getModifiedBy() .
      "',ModifiedBy='" . $batch->getCreatedDate() .
      "', ModifiedDate='" . $batch->getModifiedDate() .
      "',StartDate='" . $batch->getStartDate() .
      "',EndDate='" . $batch->getEndDate();



    $sql .= "' where id='" . $batch->getbatchid() . "' ";
    $result = mysqli_query($db->getConnection(), $sql);
    if ($connectionObj->query($sql) === TRUE) {
      return $status = true;
    } else {
      return $status = false;
    }
  }

}

?>