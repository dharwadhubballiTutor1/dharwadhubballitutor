<?php
require "../Utilities/Sanitization.php";
require "../../Admin/Model/modalCoursemodel.php";
include "../../Admin/DB Operations/CoursemodalOps.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $coursemodal = new CourseModal();
    $coursemodal->setName(Sanitization::test_input($_POST["Name"]));
    $coursemodal->setDescription(Sanitization::test_input($_POST["Description"]));

    DBCourseModal::insert($coursemodal);
}
?>
<html>

<head>
    <title> New course </title>
</head>

<body>
    <?php 
header("location:../View/viewcourse.php?id=". $_POST["id"]);
?>


</body>

</html>
