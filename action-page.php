
<html>
  <head>
    <title>DHARWAD HUBBALLI TUTOR</title>
    <link rel="icon" href="media/img/favicon.png" type="image/png" sizes="96x96">
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@100&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/dharwadhubballitutor.css">
  </head>
  <body>
    <section class="top-header">
     <div class="brand-class container-fluid">
      <div class="row">
        <div class="col-md-6">
          <img src="media/img/logo.png"> </img>
            <a class="navbar-brand" href="#">DharwadHubballiTutor</a>
        </div>
        <div class="col-md-6">
          <div class="semicircle">
            <a class="blink_me" href="#"> Job Assistance</a>
          </div>
            
        </div>
      </div>
     </div>
    </section>
  </br>
      <nav class="navbar container-fluid navbar-expand-sm bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars" style="color:black"></i>
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav mx-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.html">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Aboutus.html">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Contact.html">Contact</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Trainings </a>
            <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="Webdesigning.html">Web Designing and Development</a>
              <a class="dropdown-item" href="Python.html">Python Programming </a>
              <a class="dropdown-item" href="Cloudcomputing.html">Cloud Computing</a>
              <a class="dropdown-item" href="Androiddevelop.html">Android Development</a>
              <a class="dropdown-item" href="Civildesign.html">Civil Design Softwares</a>
              <a class="dropdown-item" href="Programlang.html">Programming Languages</a>
              <a class="dropdown-item" href="Digitalmarketing.html">Digital Marketing</a>
              <a class="dropdown-item" href="SchoolAcad.html">School Academics</a>
            </div>
            <li class="nav-item">
              <a class="nav-link" href="Internship.html">Internships</a>
            </li>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="action-page.php" class="nav-item nav-link px-2" data-toggle="modal" data-target="#exampleModalCenter">Register</a>
          </li>
        </ul>
      </div>
    </nav>
    <div class="container">
      <div class="row row-eq-height">
        <div class="w-100 text-light">
          <h3 class="h3">THANK YOU FOR REGISTERING AT DHARWADHUBBALLITUTOR...WE WILL GET BACK TO YOU VERY SOON.</h3>
        </div>
      </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</html>


<?php

require "Model/Registration.php";
require "Utilities/Sanitization.php";

require "DB Operations/RegistrationOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST"){
    $reg=new Registration();
    $reg->set_name(Sanitization::test_input($_POST["name"]));
    $reg->set_email(Sanitization::test_input($_POST["email"]));
    $reg->set_phone(Sanitization::test_input($_POST["phone"]));  
    $reg->set_trainings(Sanitization::test_input($_POST["trainings"]));
    $reg->set_internship(Sanitization::test_input($_POST["internship"]));
    DBregistration::insert($reg); 
  }
  
?>


























