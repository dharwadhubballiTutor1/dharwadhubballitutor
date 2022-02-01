<?php
$config= require_once("../../views/config.php");
require "../model/categoryModel.php";
require "../Utilities/Sanitization.php";
include "../dblayer/categoryOps.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (isset($_POST['itemcatid'])) {
    $category = new Category();
    $category->setCategoryName(Sanitization::test_input($_POST["itemcatname"]));
    $category->setCategoryDescription(Sanitization::test_input($_POST["itemcatdescription"]));
    $category->setCategoryCreatedBy(Sanitization::test_input($_POST["itemcatcreatedby"]));
    $category->setCategoryModifiedBy(Sanitization::test_input($_POST["itemcatmodifiedby"]));
    $category->setCategoryId(Sanitization::test_input($_POST["itemcatid"]));
    DBCategory::update($category);
  } else if ($_POST["action"] == 'delete') {
    DBCategory::delete($_POST["id"]);
  } else {
    $category = new Category();
    $category->setCategoryName(Sanitization::test_input($_POST["itemcatname"]));
    $category->setCategoryDescription(Sanitization::test_input($_POST["itemcatdescription"]));
    $category->setCategoryCreatedBy(Sanitization::test_input($_POST["itemcatcreatedby"]));
    $category->setCategoryModifiedBy(Sanitization::test_input($_POST["itemcatmodifiedby"]));
    DBCategory::insert($category);
  }
  header("location:../views/category.php");
}
if ($_SERVER["REQUEST_METHOD"] == "GET") {
  if (isset($_GET["subCatId"])) {
    DBCategory::getMappedCategories($_GET["subCatId"]);
  }else{
  DBCategory::selectcategory();
  }
}
