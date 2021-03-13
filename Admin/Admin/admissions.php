<?php   include "../Admin/DB Operations/AdmissionsOps.php";
       require "../Admin/Model/Admissionsmodel.php";
       include "../Admin/navbar.php";
       ?>
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
<h3 style="color:#2a0a5e">Admissions at DharwadHubballiTutor</h3>  </br>
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
<form class="form-inline mr-auto mb-4" method="POST" action="">
        <input class="form-control" name="search" type="text" placeholder="Search" id="search">
        <button class="btn btn-danger" type="submit" name="submit">Search</button>
      </form>
<br/>
<table id=enquiries >
            <tr cellspacing="0">
            
              <th>Name</th>
              <th>Email</th>
              <th>Phone</th>
              <th>Qualification</th>
              <th> Move to Admission </th>    
              </tr>
    <?php 
    
    $enquirylist= DBadmission::search();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
    foreach($enquirylist as $enquiry) 
     {
        echo "<tr><td> " . $enquiry->get_name(). "</td><td>". $enquiry->get_email(). "</td><td>" .$enquiry->get_phone(). "</td><td>". $enquiry->get_qualification(). "</td><td>"  .'<a class="btn btn-danger" href="moveadmission.php?name='.$enquiry->get_name().'&phone='.$enquiry->get_phone().'&email='.$enquiry->get_email().'&qualification='.$enquiry->get_qualification().'" role="button" type="submit" >Move </a>'.'</td></tr>' ;
     }
     
     ?>
</table>
</div>
  <div class="tab-pane fade " id="pills-newadmit" role="tabpanel" aria-labelledby="pills-newadmit-tab">
  
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
                        <input type="text" id="adhaarno" name="adhaarno" placeholder="Your Adhaar Number" class="form-control" pattern="[0-9]{4}[0-9]{4}[0-9]{4}" required>
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
                                                    
                <div class="col-md-6">
                <label for="resume" class=" col-md-6 form-label">Upload Your Resume</label>
                <div class="col-sm-12">
                    <input class="form-control" type="file" name="resume" id="resume" required>
                    </div>
                </div>

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
      <th> Id</th>
      <th>Name</th>
      <th>Phone</th>
      <th>Email</th>
      <th>Qualification</th>
      <th>Guardians Phone</th>
      <th>CoursesOpted</th>
      <th>AdhaarNo</th>
      <th> Action</th>
    </tr>
    <?php
  
     $admissionlist= DBadmission::selectall();                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
     foreach($admissionlist as $admission) 
     {
        echo "<tr><td> "  . $admission->get_id(). "</td><td>"  . $admission->get_name(). "</td><td>". $admission->get_phone(). "</td><td>" .$admission->get_email(). "</td><td>". $admission->get_qualification(). "</td><td>". $admission->get_guardiansphone(). "</td><td>" . $admission->get_coursesopted()."</td><td>". $admission->get_adhaarno(). "</td><td>" .'<a class="btn btn-danger" href="viewprofile.php?id='.$admission->get_id().'&photofile='.$admission->get_photofile().'" role="button" type="submit">View </a>'.'</td></tr>' ;
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