<?php
include "../Admin/navbar.php";
include "../DB Operations/dbconnection.php";
include "../Admin/Utilities/Helper.php";

?>
<html>
  <head><title>Student Profile</title>
  <style>
  .h2{
    background-color:#2a0a5e;
    text-align:center;
    color:#f8c000;
    margin-top:2rem;
  }
  body{
    margin-top:20px;
    color: #1a202c;
    text-align: left;
    background-color: #e2e8f0;    
}
.main-body {
    padding: 15px;
}
.card {
    box-shadow: 0 1px 3px 0 rgba(0,0,0,.1), 0 1px 2px 0 rgba(0,0,0,.06);
}

.card {
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid rgba(0,0,0,.125);
    border-radius: .25rem;
}

.card-body {
    flex: 1 1 auto;
    min-height: 1px;
    padding: 1rem;
}

.gutters-sm {
    margin-right: -8px;
    margin-left: -8px;
}

.gutters-sm>.col, .gutters-sm>[class*=col-] {
    padding-right: 8px;
    padding-left: 8px;
}
.mb-3, .my-3 {
    margin-bottom: 1rem!important;
}

.bg-gray-300 {
    background-color: #e2e8f0;
}
.h-100 {
    height: 100%!important;
}
.shadow-none {
    box-shadow: none!important;
}
  </style>
</head>
<body>

<div class="container-fluid">
  <div class="row">
     <div class="col-md-2"></div>
      <div class="col-md-10">
      <div class="container">
        <h2 class="h2">Students Details </h2>
        <?php   
          $name2=$_GET['name'];
          $email2=$_GET['email'];
          $phone2=$_GET['phone'];
          $dob2=$_GET['dateofbirth'];
          $guardname=$_GET['guardiansname'];
          $guardno=$_GET['guardiansno'];
          $courseopt=$_GET['courseopted'];
          $address=$_GET['address'];
          $adhaarno=$_GET['adhaarno'];
          $photofile=$_GET['photofile'];
        ?>
       <br/>
        <div class="row gutters-sm">
        <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <img src="<?php echo 'uploads/'.$photofile ?>" alt="Admin" class="rounded-circle" width="150">
                    <div class="mt-3">
                    <?php echo $name2;?>
                    </div>
                  </div>
                </div>
              </div>
            </div>
  
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Full Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                         <?php echo $name2;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Email</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $email2;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Phone</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $phone2;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Date Of Birth</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $dob2;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Guardians Name</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $guardname;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Guardians NO.</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $guardno;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Course Opted</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $courseopt;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Address</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $address;?>
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">Adhaar No</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                    <?php echo $adhaarno;?>
                    </div>
                  </div>
                </div>
              </div>
              </div>










          </div>
       </div>
   </div>
</div>



</body>
</html>