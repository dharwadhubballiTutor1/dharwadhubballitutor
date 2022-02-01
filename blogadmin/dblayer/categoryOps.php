<?php
require_once $_SERVER['DOCUMENT_ROOT'].$configs['app_info']['appName']."/DB Operations/dbconnection.php";
require_once $_SERVER['DOCUMENT_ROOT'].$configs['app_info']['appName']."/blogadmin/model/categoryModel.php";
require_once $_SERVER['DOCUMENT_ROOT'].$configs['app_info']['appName']."/blogadmin/model/subcategorymodel.php";
class DBcategory
{
  public static function insert($itemcatObj)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "insert into category (`categoryName`,
     `categoryDescription`,
     `categoryCreatedBy`,
     `categorytModifiedBy`) 
      values ('" . $itemcatObj->getCategoryName() .
      "','" . $itemcatObj->getCategoryDescription() .
      "','" . $itemcatObj->getCategoryCreatedBy() .
      "','" . $itemcatObj->getCategoryModifiedBy() . "')";

    if ($connectionObj->query($sql) === true) {
    } else {
      echo "Error: " . $sql . "<br>" . $connectionObj->error;
    }
  }

  public static function getAllCategory()
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "SELECT * FROM category";
    $result = $connectionObj->query($sql);
    $count = mysqli_num_rows($result);
    $categorylist = [];
    if ($count > 0) {
      while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $category = new Category();
        $category->setCategoryId($row['categoryId']);
        $category->setCategoryName($row['categoryName']);
        $category->setCategoryDescription($row["categoryDescription"]);
        $category->setCategoryCreatedBy($row["categoryCreatedBy"]);
        $category->setCategoryModifiedBy($row["categorytModifiedBy"]);
        $category->setMappedSubCategory(DBcategory::getMappedSubcategoryList($row['categoryId']));
        array_push($categorylist, $category);
      }
    } else {
      echo "";
    }
    return $categorylist;
  }
  public static function getMappedSubcategoryList($categoryId){
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "SELECT * FROM catsubcatmapping AS M 
    JOIN subcategory SC ON M.sucatId= SC.subCategoryId
    WHERE M.catId=".$categoryId;
    $result = $connectionObj->query($sql);
    $count = mysqli_num_rows($result);
    $subCategorylist = [];
    if ($count > 0) {
      while ($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
        $subCategory = new Subcategory();
        $subCategory->setSubCategoryName($row['subCategoryName']);
        $subCategory->setSubCategoryId($row['subCategoryId']);
        $subCategory->setSubCategoryDescription($row["subCategoryDescription"]);
        $subCategory->setSubCategoryCreatedBy($row["subCategoryCreatedBy"]);
        $subCategory->setSubCategoryModifiedBy($row["subCategoryModifiedBy"]);
        array_push($subCategorylist, $subCategory);
      }
    } else {
      // echo "0 results";
    }

    return $subCategorylist;
  }
  public static function update($catObj)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "UPDATE category SET categoryName='" . $catObj->getCategoryName() .
      "', categoryDescription='" . $catObj->getCategoryDescription() .
      "', categorytModifiedBy='" . $catObj->getCategoryModifiedBy() .
      "' WHERE categoryId=" . $catObj->getCategoryId();
    echo $sql;
    if ($connectionObj->query($sql) === TRUE) {
    } else {
      echo "Error: " . $sql . "<br>" . $connectionObj->error;
    }
  }
  public static function selectcategory()
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $result = mysqli_query($connectionObj, 'SELECT categoryId, categoryName FROM category');
    $itemcatlist = [];
    if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $view = new Category();
        $view->setCategoryId($row['categoryId']);
        $view->setCategoryName($row['categoryName']);
        array_push($itemcatlist, $view);
      }
    } else {
      echo "0 results";
    }
    header('Content-Type: application/json');
    echo json_encode($itemcatlist);
  }

  public static function delete($itemcatObj)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "DELETE from category where categoryId='" . $itemcatObj . "'";
    if ($connectionObj->query($sql) === TRUE) {
    } else {
      echo "Error: " . $sql . "<br>" . $connectionObj->error;
    }
  }
  public static function getMappedCategories($subCategoryId)
  {
    $db = ConnectDb::getInstance();
    $connectionObj = $db->getConnection();
    $sql = "SELECT C.categoryName,
    C.categoryId, 
    CASE WHEN TEMP.subCatId IS NULL THEN
    FALSE
    ELSE
    TRUE 
    END AS subCatId 
    FROM category AS C 
    LEFT JOIN ( SELECT subC.subCategoryId AS subCatId, 
    M.catId AS catId from subcategory AS subC 
    LEFT JOIN catsubcatmapping AS M on subC.subCategoryId=M.sucatId 
    WHERE subC.subCategoryId=" . $subCategoryId . ") AS TEMP ON C.categoryId= TEMP.catId";
    $result = mysqli_query($connectionObj, $sql);
    $itemcatlist = [];
    error_log(mysqli_num_rows($result));
    if (mysqli_num_rows($result) > 0) {
      while ($row = mysqli_fetch_assoc($result)) {
        $category = new Category();
        $category->setCategoryId($row['categoryId']);
        $category->setCategoryName($row['categoryName']);
        $category->setMappedSubCategory($row['subCatId']);
        array_push($itemcatlist, $category);
      }
    } else {
      echo "0 results";
    }
    header('Content-Type: application/json');
    echo json_encode($itemcatlist);
  }
}
