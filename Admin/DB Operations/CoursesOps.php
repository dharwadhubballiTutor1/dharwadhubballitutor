<?php
// require "../Admin/session.php";
$dirPath1 = "DB Operations/dbconnection.php";
$dirPath2 = "Admin/Model/Coursesmodel.php";

if (file_exists($dirPath1) && file_exists($dirPath2)) {
  require_once "DB Operations/dbconnection.php";
  require_once "Admin/Model/Coursesmodel.php";
} else {
  require_once "../../DB Operations/dbconnection.php";
  require_once "../../Admin/Model/Coursesmodel.php";
}
class DBcourse
{
  public static function insert($courseObj)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "insert into courses (`CName`, `Ctype`, `Cduration`) 
                values ('" . $courseObj->get_cname() . "','" . $courseObj->get_ctype() . "','" . $courseObj->get_cduration() . "')";

    if ($connectionObj->query($sql) === TRUE) {
    } else {
      echo "Error: " . $sql . "<br>" . $connectionObj->error;
    }
  }
  public static function selectall()
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = 'SELECT * FROM courses';
    $result = mysqli_query($db->getConnection(), $sql);
    $courseslist = [];
    if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $view = new Courses();
        $view->set_id($row['id']);
        $view->set_cname($row['CName']);
        $view->set_ctype($row['Ctype']);
        $view->set_cduration($row['Cduration']);

        array_push($courseslist, $view);
      }
    } 

    return $courseslist;
  }
  public static function selectcourse()
  {

    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $result = mysqli_query($db->getConnection(), 'SELECT id,CName FROM courses');
    $courselist = [];
    if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $view = new Courses();
        $view->set_id($row['id']);
        $view->set_cname($row['CName']);
        array_push($courselist, $view);
      }
    } else {
      echo "0 results";
    }
    return $courselist;
  }

  public static function getcoursename($courseid)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $result = mysqli_query($db->getConnection(), 'SELECT CName FROM courses where id=' . $courseid . '');
    if (mysqli_num_rows($result) > 0) {

      $row = mysqli_fetch_assoc($result);
      return $row['CName'];
    }
  }
}
