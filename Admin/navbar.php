<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  height: 100%;
  width: 220px;
  position: fixed;
  z-index: 1;
  top: 0%;
  left: 0;
  background-color: #2a0a5e;
  overflow-x: hidden;
  padding-top: 20px;
}

.sidenav a {
  padding: 6px 6px 6px 32px;
  text-decoration: none;
  font-size: 20px;
  color: #f8c000;
  display: block;
}

.sidenav a:hover {
  color: black;
  background-color:#f8c000;
}
.sidenav a:active {
  background-color:#f8c000;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
.user-info{
  color:#f8c000;
  font-size:18px;
  text-align:center;
}
.brandName{
  color:#f8c000;
  font-size:20px;
}
.img-responsive {
  margin-left: auto;
  margin-right: auto;
  display: block;
}

</style>
</head>
<body>
  <div class="container-fluid">
    <div class="row">
      <div class="col-md-1">
            <div class="sidenav">
                 <h3 class="navbar-brand brandName">DharwadHubballiTutor</h3> <br>
                 <div class="sidebar-header">
                      <div class="user-pic">
                           <img class="img-responsive rounded-circle mx-auto d-block" style="text-align:center" src="../Admin/admin.png" alt="User picture">
                      </div>
                      <div class="user-info">
                          <span class="user-role">Administrator</span>
                      </div>
                 </div><hr>
                 
                 <a href="enquiries.php">Enquiries</a>
                 <a href="admissions.php">Admissions</a>
           </div>
       </div> 
       <div class="col-md-11"></div> 
     </div>
  </div> 

</body>
</html> 
