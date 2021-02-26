
<html>
  <head> <title>Admissions </title>
  <link rel=stylesheet href="../Admin/css/dharwadhubballitutoradmin.css "/>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
  <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
</head>
<body>
<div class="container-fluid">
  <div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-10">
<h3 style="color:#2a0a5e">ADMISSIONS AT DHARWADHUBBALLITUTOR</h3>  </br>
<ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
<li class="nav-item" role="presentation">
    <button class="nav-link active" id="pills-enquiry-tab" data-bs-toggle="pill" data-bs-target="#pills-enquiry" type="button" role="tab" aria-controls="pills-enquiry" aria-selected="true">From Enquiry</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link " id="pills-newadmit-tab" data-bs-toggle="pill" data-bs-target="#pills-newadmit" type="button" role="tab" aria-controls="pills-newadmit" aria-selected="false">New Admission</button>
  </li>
  <li class="nav-item" role="presentation">
    <button class="nav-link" id="pills-admissions-tab" data-bs-toggle="pill" data-bs-target="#pills-admissions" type="button" role="tab" aria-controls="pills-admissions" aria-selected="false">Admission List</button>
  </li>
</ul>
<div class="tab-content" id="pills-tabContent">
<div class="tab-pane fade show active" id="pills-enquiry" role="tabpanel" aria-labelledby="pills-enquiry-tab">
<form action="" method="post">
<input type="text" name="search">
<input type="submit" name="submit" value="Search">
</form></br>
<table id=enquiries >
            <tr>
                <th>Id</th>
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Qualification</th>
              <th> Move to Admission </th>  
             
              </tr>
              <?php 
include "../DB Operations/dbconnection.php";
  include "../Admin/navbar.php";
$search="";
if (isset($_POST['submit']))
  $search=$_POST["search"];
  $db=ConnectDb::getInstance();
  $sql = "SELECT id,Name,Email,Phone,Qualification From candidates where Name like '%$search%' ";
  $result = mysqli_query($db->getConnection(), $sql);

  if (mysqli_num_rows($result) > 0) {
     while($row = mysqli_fetch_assoc($result)) {
        echo '<tr><td> ' . $row["id"]. '</td>' ; 
        echo '<td> ' . $row["Name"]. '</td>' ; 
        echo '<td>' . $row["Email"]. '</td> ';
        echo '<td>'. $row["Phone"]. '</td>';
        echo '<td>'. $row["Qualification"]. '</td>';
        echo '<td>'.'<a class="btn btn-warning" href="moveadmission.php?name='.$row['Name'].'&email='.$row['Email'].'&phone='.$row['Phone'].'&qualification='.$row['Qualification'].'" role="button" type="submit">Move </a>'.'</td></tr>' ;
       

     }
    } else {
                echo "0 results";
             }     

              
?>


</table>
</div>
  <div class="tab-pane fade " id="pills-newadmit" role="tabpanel" aria-labelledby="pills-newadmit-tab">
      <?php 
       include "../Admin/navbar.php";
      ?>
  <div class="container" id="pills-newadmit">
            <form class="form-horizontal" action="newadmissions.php" method="POST" role="form" enctype="multipart/form-data">
              <br>
                <h2 style="color:#f8c000">Admission Form</h2>
                <div class="row g-3">
                <div class="col-md-6">
                    <label for="name" class="col-md-6 control-label">Full Name</label>
                    <div class="col-sm-12">
                        <input type="text" id="name" placeholder="Full Name" name="name" class="form-control" pattern="[a-zA-Z\-\ ]+" required>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                    <label for="phone" class="col-md-6 control-label">Phone</label>
                    <div class="col-sm-12">
                        <input type="tel" id="phone" placeholder="Phone" name="phone" class="form-control"  required>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                    <label for="email" class="col-md-6 control-label">Email</label>
                    <div class="col-sm-12">
                        <input type="email" id="email" placeholder="Email" name="email" class="form-control" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" required>
                    </div>
                </div>
               <br/>

                <div class="col-md-6">
                    <label for="dateofbirth" class="col-md-6 control-label">Date of Birth</label>
                    <div class="col-sm-12">
                        <input type="date" id="dateofbirth" name="dateofbirth" class="form-control" required>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                    <label for="qualification" class="col-md-6 control-label">Qualification</label>
                    <div class="col-sm-12">
                        <input type="text" id="qualification"  name="qualification" placeholder="Your Qualification" class="form-control" pattern="[A-Za-z]+" required>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                    <label for="guardiansname" class="col-md-6 control-label">Guardians Name</label>
                    <div class="col-sm-12">
                        <input type="text" id="guardiansname" name="guardiansname" placeholder="Guardians Name"class="form-control"  pattern="[a-zA-Z\-\ ]+" required>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                    <label for="guardiansphone" class="col-md-8 control-label">Guardians Phone Number</label>
                    <div class="col-sm-12">
                        <input type="text" id="guardiansphone" name="guardiansphone" placeholder="Guardians Phone Number" class="form-control"  required>
                    </div>
                </div>
                <br/>


                <div class="col-md-6">
                    <label for="coursesopted" class="col-md-6 control-label">Courses Opted</label>
                    <div class="col-sm-12">
                    <select class="form-select" id="coursesopted" name="coursesopted" required>
                    <option value="SELECT YOUR INTEREST">Select your Interest</option>
                    <option value="Web Designing and Development">Web Designing and Development</option>
                  <option value="Python Programming">Python Programming</option>
                  <option value="Civil Design Softwares">Civil Design Softwares</option>
                  <option value="Digital Marketing">Digital Marketing</option>
                  <option value="Android Development">Android Development</option>
                  <option value="Cloud Computing">Cloud Computing</option>
                  <option value="Programming Languages">Programming Languages</option>
                  <option value="Basic Computers">Basic Computers</option>
                  <option value="School Academics">School Academics</option>
                </select>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                    <label for="address" class="col-md-6 control-label">Address</label>
                    <div class="col-sm-12">
                        <input type="address" id="address" name="address" placeholder="Residential Address" class="form-control" required>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                    <label for="adhaarno" class="col-md-6 control-label">Adhaar Number</label>
                    <div class="col-sm-12">
                        <input type="text" id="adhaarno" name="adhaarno" placeholder="Your Adhaar Number" class="form-control" pattern="[0-9]{4}-[0-9]{4}-[0-9]{4}" required>
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                <label for="adhaarfile" class=" col-md-6 form-label">Upload Your Adhaar</label>
                <div class="col-sm-12">
               
                    <input type="file" name="adhaarfile" id="adhaarfile" class="form-control">
                
                    </div>
                </div>
                <br/>

                <div class="col-md-6">
                <label for="photofile" class=" col-md-6 form-label">Upload Your Photo</label>
                <div class="col-sm-12">
                    <input class="form-control" type="file" name="photofile" id="photofile" required>
                    </div>
                </div>
                <br/>

                <div class="form-group">
                    <div class="col-sm-12 " style=text-align:center>
                        <button type="submit" class="btn btn-warning">Register</button>
                    </div>
                </div>
            </form> <!-- /form -->
            </div>
        </div>
  </div>
  <div class="tab-pane fade" id="pills-admissions" role="tabpanel" aria-labelledby="pills-admissions-tab">
  <table id=enquiries class="center">
    <tr>
      <th>ID</th>
      <th>Name</th>
      <th>Phone</th>
      <th>Email</th>
      <th>DateofBirth</th>
      <th>Qualification</th>
      <th>Guardians Name</th>
      <th>Guardians Phone</th>
      <th>CoursesOpted</th>
      <th>Address</th>
      <th>AdhaarNo</th>
      <th>AdhaarFile</th>
      <th>PhotoFile</th>
      <th> View Profile</th>

    </tr>
     <?php

 include "../Admin/navbar.php";

   $db=ConnectDb::getInstance();
   $sql = 'SELECT * FROM admissions';
   $result = mysqli_query($db->getConnection(), $sql);

   if (mysqli_num_rows($result) > 0) {
      while($row = mysqli_fetch_assoc($result)) {
         echo "<tr><td> " . $row["id"]."</td><td>" . $row["Name"]. "</td><td>" . $row["Phone"]. "</td><td>" . $row["Email"]. "</td><td>". $row["DateofBirth"]. "</td><td>". $row["Qualification"]. "</td><td>" . $row["Guardians_Name"]. "</td><td>". $row["Guardians_Phone"]. "</td><td>" . $row["CoursesOpted"]. "</td><td>". $row["Address"]. "</td><td>". $row["AdhaarNo"]. "</td><td>".  $row["AdhaarFile"]. "</td><td>".$row["PhotoFile"]. "</td><td>" .'<a class="btn btn-warning" href="viewprofile.php" role="button" type="submit">View </a>'."</td></tr>";
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
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js" integrity="sha384-KsvD1yqQ1/1+IA7gi3P0tyJcT3vR+NdBTt13hSJ2lnve8agRGXTTyNaBYmCR/Nwi" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js" integrity="sha384-nsg8ua9HAw1y0W1btsyWgBklPnCUAFLuTMS2G72MMONqmOymq585AcH49TLBQObG" crossorigin="anonymous"></script>
</body>
</html>