<?php
// require "../Admin/session.php";
require_once "../../DB Operations/dbconnection.php";
require_once "../../Admin/Model/modalCourseModel.php";

class DBCourseModal
{
    public static function insert($coursemodal)
    {
        $db = ConnectDb::getInstance();
        $connectionObj = $db->getConnection();
        $sql = "insert into coursemodal (`Name`,`description` ) 
    values ('" . $coursemodal->getName() . "','" . $coursemodal->getDescription() . "')";
        error_log($sql);
        if ($connectionObj->query($sql) === TRUE) {
        }
    }

    
    public static function getcourseModalById($Id)
    {
        $db = ConnectDb::getInstance();
        $connectionObj = $db->getConnection();
        $sql = "SELECT * FROM coursemodal WHERE coursemodalId = $Id";
        $result = $connectionObj->query($sql);
        $CourseModalList = [];
        if (mysqli_num_rows($result) > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                $coursemodal = new CourseModal();
                $coursemodal->setcoursemodalId($row['coursemodalId']);
                $coursemodal->setName($row['Name']);
                $coursemodal->setDescription($row['Description']);
                array_push($CourseModalList, $coursemodal);
            }
        }
        return $CourseModalList;
    }
}
