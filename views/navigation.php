<?php
$configs=require_once ("config.php");
require_once("blogadmin/dblayer/businessOps.php");
require_once("blogadmin/dblayer/categoryOps.php");
require_once("blogadmin/dblayer/postOps.php");
require_once "blogadmin/dblayer/socialMediaHandleOps.php";
require_once "Admin/DB Operations/CoursesOps.php";

$courselist = DBcourse::selectall();
$business = DBbusiness::getBusinessDetails();
$socialMediaHandles = DBsocialMediaHandle::read();
?>
<!doctype html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="author" content="Sqare Edge Technologies" />
  <meta name="description" content="We, Square Edge located at Banasawadi do Provide Training for CADD Courses, Online & Regular IELTS/Spoken English Classes, IT Related Courses & Internships. Square Edge Technologies stands for professionalism and quality of service, finding the way with cutting-edge concepts and constantly striving for EXCELLENCE across all industry sectors. With a traditional approach built around meeting the long-term needs of both employers and staff, we provide the foundation for a successful career. While we ensure that the candidates fit into the right position we make sure that the industry gets a constant inflow of quality staff">
  <meta name="keywords" content="<?php echo isset($post) ? $post->getKeywords() : ""; ?>" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link href="<?php echo '/dharwadhubballitutor/css/dharwadhubballitutor.css'; ?>" rel="stylesheet">
  <title><?php echo isset($post) ? $post->getPostTitle() : ""; ?></title>
</head>

<body>
  <div class="row container-fluid top-strip">
    <div class="col-md-1"></div>
    <div class="col-md-5"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-telephone-outbound-fill" viewBox="0 0 16 16">
        <path fill-rule="evenodd" d="M1.885.511a1.745 1.745 0 0 1 2.61.163L6.29 2.98c.329.423.445.974.315 1.494l-.547 2.19a.678.678 0 0 0 .178.643l2.457 2.457a.678.678 0 0 0 .644.178l2.189-.547a1.745 1.745 0 0 1 1.494.315l2.306 1.794c.829.645.905 1.87.163 2.611l-1.034 1.034c-.74.74-1.846 1.065-2.877.702a18.634 18.634 0 0 1-7.01-4.42 18.634 18.634 0 0 1-4.42-7.009c-.362-1.03-.037-2.137.703-2.877L1.885.511zM11 .5a.5.5 0 0 1 .5-.5h4a.5.5 0 0 1 .5.5v4a.5.5 0 0 1-1 0V1.707l-4.146 4.147a.5.5 0 0 1-.708-.708L14.293 1H11.5a.5.5 0 0 1-.5-.5z" />
      </svg><i class="bi bi-telephone-outbound-fill"></i> <?php echo $business->getBusinessContact(); ?></div>
    <div class="col-md-4 " align="right"><a class="" href="mailto:" <?php echo $business->getBusinessEmail(); ?>><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-envelope-fill" viewBox="0 0 16 16">
          <path d="M.05 3.555A2 2 0 0 1 2 2h12a2 2 0 0 1 1.95 1.555L8 8.414.05 3.555ZM0 4.697v7.104l5.803-3.558L0 4.697ZM6.761 8.83l-6.57 4.027A2 2 0 0 0 2 14h12a2 2 0 0 0 1.808-1.144l-6.57-4.027L8 9.586l-1.239-.757Zm3.436-.586L16 11.801V4.697l-5.803 3.546Z" />
        </svg> <?php echo $business->getBusinessEmail(); ?></a>
    </div>

    <div class="col-md-2 " align="right">
      <?php
      foreach ($socialMediaHandles as $handle) {
        echo '<a class="social-icon " href="' . $handle->getHandle() . '">' . $handle->getIcon() . '</a>';
      }
      ?>
    </div>
  </div>
  <nav class="navbar navbar-expand-lg navbar-light bg-light container-fluid">
    <div class="container-fluid">
    <a class="navbrand" href="#"><h3 class="brand-name">Dharwadhubballitutor</h3></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="<?php echo $configs['app_info']['appName'] ?>">Home</a>
          </li>
          <?php
          $categoryList = DBcategory::getAllCategory();
          foreach ($categoryList as $category) {
            if (empty($category->getMappedSubCategory())) {
              echo '<li class="nav-item">
                  <a class="nav-link" href="#">' . ucfirst(strtolower($category->getCategoryName())) . '</a>
                  </li>';
            } else {
              $dropdown = ' <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              ' . ucfirst(strtolower($category->getCategoryName())) . '
            </a>
            <ul class="dropdown-menu list-group-horizontal-md" aria-labelledby="navbarDropdown">';
              foreach ($category->getMappedSubCategory($category->getCategoryId()) as $subcategory) {
                $dropdown .= '<li><a class="dropdown-item" href="#">' . ucfirst(strtolower($subcategory->getSubCategoryName())) . '</a><hr class="dropdown-divider">';
                $postList = DBpost::getPostBySubCategoryFornt($subcategory->getSubCategoryId());
                $dropdown .= '<ul class="dropdown-inner-menu" aria-labelledby="navbarDropdown">';
                foreach ($postList as $navpost) {
                  $dropdown .= '<li class="nav-item">
                  <a class="dropdown-item" href="'. $navpost->getPostUrl() . '">' . ucfirst(strtolower($navpost->getPostTitle())) . '</a></li>';
                }
                $dropdown .= '</ul></li>';
              }
              $dropdown .= '</ul></li>';
              echo $dropdown;
            }
          }
          ?>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="<?php echo $configs['app_info']['appName'];?>/about/">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="<?php echo $configs['app_info']['appName'];?>/contact/">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>