<?php include "../Admin/navbar.php";?>
<html>
  <head><title>ENQUIRIES</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
  <link rel=stylesheet href=../Admin/css/dharwadhubballitutoradmin.css />
</head>
<body>
  <div class="container-fluid">
  <div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-10">
         <h3 style="color:#2a0a5e">Enquiries at DharwadHubballiTutor</h3>  </br>
         <ul class="nav nav-tabs" id="myTab" role="tablist">
  <li class="nav-item" role="presentation">
    <button class="nav-link active" id="trainings-tab" data-bs-toggle="tab" data-bs-target="#trainings" type="button" role="tab" aria-controls="trainings" aria-selected="true"><b>Trainings</b></button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="internship-tab" data-bs-toggle="tab" data-bs-target="#internship" type="button" role="tab" aria-controls="internship" aria-selected="false"><b>Internship</b></button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="democlass-tab" data-bs-toggle="tab" data-bs-target="#democlass" type="button" role="tab" aria-controls="democlass" aria-selected="false"><b>Demo Class</b></button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="services-tab" data-bs-toggle="tab" data-bs-target="#services" type="button" role="tab" aria-controls="services" aria-selected="false"><b>Services</b></button>
  </li>
</ul>
<br/>
<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="trainings" role="tabpanel" aria-labelledby="trainings-tab"> 
         <table id=enquiries >
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Qualification</th>
              <th>Trainings</th>
              </tr>

             <?php
               include "../DB Operations/dbconnection.php";
          
               $db=ConnectDb::getInstance();
               $sql = "SELECT * FROM candidates WHERE Trainings IS NOT NULL AND TRIM(Trainings) <> '' ";
              $result = mysqli_query($db->getConnection(), $sql);

                if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                  echo "<tr><td> " . $row["Name"]. "</td><td>" . $row["Email"]. "</td><td>" . $row["Phone"]. "</td><td>". $row["Qualification"]. "</td><td>". $row["Trainings"]. "</td></tr>";
                }
                } else {
                     echo "0 results";
                }
    
             ?>
          </table>
   </div>
  <div class="tab-pane fade" id="internship" role="tabpanel" aria-labelledby="internship-tab">
   <table id=enquiries >
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Qualification</th>
              <th>Internship</th>
              </tr>

             <?php
              
               $db=ConnectDb::getInstance();
               $sql = "SELECT * FROM candidates WHERE Internship IS NOT NULL AND TRIM(Internship) <> '' ";
              $result = mysqli_query($db->getConnection(), $sql);

                if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                  echo "<tr><td> " . $row["Name"]. "</td><td>" . $row["Email"]. "</td><td>" . $row["Phone"]. "</td><td>". $row["Qualification"]. "</td><td>". $row["Internship"]. "</td></tr>";
                }
                } else {
                     echo "0 results";
                }
    
             ?>
          </table>
      </div>
  <div class="tab-pane fade" id="democlass" role="tabpanel" aria-labelledby="democlass-tab">
  <table id=enquiries >
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Qualification</th>
              <th>Demo</th>
              </tr>

             <?php
              
               $db=ConnectDb::getInstance();
               $sql = "SELECT * FROM candidates WHERE Demo IS NOT NULL AND TRIM(Demo) <> '' ";
              $result = mysqli_query($db->getConnection(), $sql);

                if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                  echo "<tr><td> " . $row["Name"]. "</td><td>" . $row["Email"]. "</td><td>" . $row["Phone"]. "</td><td>". $row["Qualification"]. "</td><td>". $row["Demo"]. "</td></tr>";
                }
                } else {
                     echo "0 results";
                }
    
             ?>
          </table>
  </div>
  <div class="tab-pane fade" id="services" role="tabpanel" aria-labelledby="services-tab">
  <table id=enquiries >
            <tr>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Qualification</th>
              <th>Services</th>
              </tr>

             <?php
               
               $db=ConnectDb::getInstance();
               $sql = "SELECT * FROM candidates WHERE Services IS NOT NULL AND TRIM(Services) <> '' ";
              $result = mysqli_query($db->getConnection(), $sql);

                if (mysqli_num_rows($result) > 0) {
                while($row = mysqli_fetch_assoc($result)) {
                  echo "<tr><td> " . $row["Name"]. "</td><td>" . $row["Email"]. "</td><td>" . $row["Phone"]. "</td><td>". $row["Qualification"]. "</td><td>". $row["Services"]. "</td></tr>";
                }
                } else {
                     echo "0 results";
                }
    
             ?>
          </table>
  </div>
</div>

         
        
          
  </div>
  </div>
  </div>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>