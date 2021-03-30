<?php
 require_once "DB Operations/dbconnection.php";
  require_once "Admin/DB Operations/CoursesOps.php";
  require_once "Admin/Model/Coursesmodel.php";
  $courselist=DBcourse::selectall();
?>
<!DOCTYPE html>
<html lang=en>
<head>
<title>Best Digital Services provider In Dharwad.</title>
<link rel=icon href=media/img/favicon.png type=image/png sizes=96x96 />
<meta charset=utf-8 />
<meta name=title content=DharwadHubballiTutor />
<meta name=description content="DharwadHubballiTutor provides Trainings on various courses and helps upgrade Skills so as to make everyone Job ready" />
<meta name=keywords content="Training institute near me,computer training center,computer training basics,	web designing coaching,web development coaching,	web designing and development coaching,	python programming course, python programming course in dharwad,Software development training institute,Computer basics training institute,Website designing and develpoment training institute in dharwad,Best training institute in Dharwad,HTML,CSS,Java,Python,Digital Marketing training insitute,Revit,Autocad design courses near me,civil software coaching near me,App development training in dharwad,App development training near me,App development training,Cloud Computing training institute in dharwad, cloud computing training institute near me,Android,Graphic designing,C C++ training courses,	digital marketing courses in dharwad,	android development course in dharwad,	android development advanced course ,android development training institute near me,	cloud computing courses in dharwad,	cloud computing courses near me,	civil design software training near me,civil design software training institute in dharwad ,java training near me,java training institutes in hubli-dharwad,python coaching near me,python coaching centers in dharwad,python coaching center in dharwad,python training institute in dharwad" />
<meta name=viewport content="width=device-width,initial-scale=1.0" />

<link rel=stylesheet href=https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css integrity=sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2 crossorigin=anonymous />
<script src=https://code.jquery.com/jquery-3.5.1.slim.min.js integrity=sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj crossorigin=anonymous></script>
<script src=https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js integrity=sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx crossorigin=anonymous></script>
<link rel=preconnect href=https://fonts.gstatic.com />
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@100&display=swap" rel=stylesheet />
<link rel=stylesheet href=css/dharwadhubballitutor.css />
<link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css />
<link href="http://allfont.net/allfont.css?fonts=league-spartan" rel=stylesheet type=text/css />
<link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
<link rel=preconnect href=https://fonts.gstatic.com />
<link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel=stylesheet />
<!-- Facebook Pixel Code -->
<script>
  !function(f,b,e,v,n,t,s)
  {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
  n.callMethod.apply(n,arguments):n.queue.push(arguments)};
  if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
  n.queue=[];t=b.createElement(e);t.async=!0;
  t.src=v;s=b.getElementsByTagName(e)[0];
  s.parentNode.insertBefore(t,s)}(window, document,'script',
  'https://connect.facebook.net/en_US/fbevents.js');
  fbq('init', '1433283177021826');
  fbq('track', 'PageView');
  </script>
  <noscript><img height="1" width="1" style="display:none"
  src="https://www.facebook.com/tr?id=1433283177021826&ev=PageView&noscript=1"
  /></noscript>
  <!-- End Facebook Pixel Code -->
</head>
<body>
<div class="brand-class container-fluid">
<div class=row>
<div class=col-md-6>
<a class="navbar-brand brandName" href=#>DharwadHubballiTutor</a>
<br/>
<a class="social-icon fbicon" target=_blank rel="noopener" href=https://www.facebook.com/DharwadhubballiTutor><i class="fab fa-facebook fa-lg fbicon fbheader"></i></a>
<a class="social-icon twittericon" target=_blank rel="noopener" href=https://twitter.com/DharwadTutor><i class="fab fa-twitter fa-lg twittericon twitterheader"></i></a>
<a class="social-icon instaicon" target=_blank rel="noopener" href=https://www.instagram.com/dharwadhubballitutor><i class="fab fa-instagram fa-lg instaicon instaheader"></i></a>
<a class="social-icon instaicon" target=_blank rel="noopener" href=http://www.linkedin.com/in/dharwadhubballitutor><i class="fab fa-linkedin fa-lg linkedinicon linkedinheader"></i></a>
<a class="social-icon whatsappicon" target=_blank rel="noopener" href="https://api.whatsapp.com/send?phone=919741237334&amp;text=Hithere!Ihaveaquestion"><i class="fab fa-whatsapp fa-lg whatsappicon whatsappheader"></i></a>
</div>
<div class=col-md-6>
<div class=semicircle>
<a class="blink_me social-icon" href=Job-Assistance.php> Job Assistance</a>
</div>
<div class="container">
  <a href="Job-Assistance.php" class="mobileshow btn-btn-outline-warning" role="button">Job Assistance</a></div>
</div>
<div class="col text-right">
  <a style="color:white" href="tel:+919741237334">+919741237334</a>
<a style="color:white" href=tel:+918007961759>+918007961759</a>
</div>
</div>
</div>
<br />
<nav class="navbar navbar-expand-md bg-light">
<button class=navbar-toggler type=button data-toggle=collapse data-target=#navbarNavDropdown aria-controls=navbarNavDropdown aria-expanded=true aria-label="Toggle navigation">
<i class="fa fa-bars"></i>
</button>
<div class="collapse navbar-collapse" id=navbarNavDropdown>
<ul class="navbar-nav mx-auto">
<li class="nav-item active">
<a class=nav-link href=index.php>Home <span class=sr-only>(current)</span></a>
</li>
<li class=nav-item>
<a class=nav-link href=Aboutus.php>About</a>
</li>
<li class=nav-item>
<a class=nav-link href=Contact.php>Contact</a>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" href=# id=navbarDropdownMenuLink role=button data-toggle=dropdown aria-haspopup=true aria-expanded=false> Trainings </a>
<div class=dropdown-menu aria-labelledby=navbarDropdownMenuLink>
<a class=dropdown-item href=Web-Designing-and-Development-Training.php>Web Designing and Development</a>
<a class=dropdown-item href=Python-Programming-Training.php>Python Programming </a>
<a class=dropdown-item href=Cloud-Computing-Training.php>Cloud Computing</a>
<a class=dropdown-item href=Android-Development-Training.php>Android Development</a>
<a class=dropdown-item href=Civil-Design-Softwares-Training.php>Civil Design Softwares</a>
<a class=dropdown-item href=Programming-Languages-Training.php>Programming Languages</a>
<a class=dropdown-item href=Digital-Marketing-Training.php>Digital Marketing</a>
<a class=dropdown-item href=Tally-GST-Training.php>Tally & GST Training</a>
<a class=dropdown-item href=Basics-of-Computer-Training.php>Basics of Computer</a>
<a class=dropdown-item href=School-Academics-Training.php>School Academics</a>
</div>
</li>
<li class=nav-item>
<a class=nav-link href=Internship.php>Internships</a>
</li>
<li class=nav-item>
  <a class=nav-link href=Services.php>Services</a>
  </li>
</ul>
<ul class=navbar-nav>
<li class=nav-item>
<a href=action-page.php class="nav-item nav-link px-2" data-toggle=modal data-target=#exampleModalCenter>Register</a>
</li>
</ul>
</div>
</nav>
<div class="container ">
  <div class="row">
    <div class="w-100 text-light">
    <div class="col-md-12">
      <h2 class="h3">We at DharwadHubballiTutor along with Tutorials also provide various SERVICES for our customers.</h2>
    </div>
  </div>
</div>
<div class="col-md-12 justify-content-center align-self-center p-4 container-fluid">
  <h2 class="text-center w-100" style=color:white>OUR SERVICES</h2>
</div>
<div id="multi-item-example" class="carousel slide carousel-multi-item" data-ride="carousel">
  <div class="controls-top text-center">
    <a class="btn-floating" href="#multi-item-example" data-slide="prev"><i class="fas fa-chevron-left"></i></a>
    <a class="btn-floating" href="#multi-item-example" data-slide="next"><i
        class="fas fa-chevron-right"></i></a>
  </div>
  <!--Indicators-->
  <ol class="carousel-indicators">
    <li data-target="#multi-item-example" data-slide-to="0" class="active"></li>
    <li data-target="#multi-item-example" data-slide-to="1"></li>
    
  </ol>
  <div class="carousel-inner" role="listbox">

    <!--First slide-->
    <div class="carousel-item active">

      <div class="col-md-4" style="float:left">
        <div class="card mb-4">
          <img id="businessimg" class="rounded-circle mx-auto d-block" alt="Business Process Setup Image" src="media/img/business.gif" />
          <div class="card-body">
            <h4 class="h4 card-title">Business Process Setup</h4>
            <p class="card-text" style="font-size: 14px;">The lifeblood of every successful business is well-defined and effective business practices. Using a highly collaborative approach, we help you create process maps so that process discrepancies and redundancies can be visually identified.</p>
              <p><a class="btn btn-warning" data-toggle=modal data-target=#modal3 role="button">Get a Quote &raquo;</a></p>
            </div>
          </div>
      </div>
      <div class="col-md-4" style="float:left">
          <div class="card mb-4 h-200">
          <img id="webimg" class="rounded-circle mx-auto d-block card-img-top" alt="Web Designing & Development Image" src="media/img/webservices.gif" />
          <div class="card-body">
            <h4 class="h4 card-title">Web Designing & Development</h4>
            <p class="card-text" style="font-size: 14px;">To encourage the growth of your company, our web design & development team has set up a host of effective services.</p>
            <ul>
             <li>Website Building</li>
             <li>Domain Registration</li>
             <li>Web Hosting</li>
            </ul>
           <p><a class="btn btn-warning" data-toggle=modal data-target=#modal3 role="button">Get a Quote &raquo;</a></p>
        </div>
        </div>
      </div>
      <div class="col-md-4" style="float:left">
        <div class="card mb-4">
          <img id="appimg" class="rounded-circle mx-auto d-block" alt="Mobile App Development Image" src="media/img/appdevelop.gif" />
          <div class="card-body">
            <h4  class="h4 card-title">Mobile App Development</h4>
            <p class="card-text" style="font-size: 14px;">We provide services for full-cycle mobile app growth.This involves expert market research, design and development of your mobile application, incorporating the new product into your infrastructure from concept to launch, and offering more optimization and scale-up on demand.</p>
              <p><a class="btn btn-warning" data-toggle=modal data-target=#modal3 role="button">Get a Quote &raquo;</a></p>
            </div>
          </div>
        </div>
    </div>
    <div class="carousel-item">
      <div class="col-md-4" style="float:left">
        <div class="card mb-4">
          <img id="digimg" class="rounded-circle mx-auto d-block" alt="Digital Marketing Image" src="media/img/digital.gif" />
          <div class="card-body">

            <h4 class="h4 card-title">Digital Marketing</h4>
            <p class="card-text" style="font-size: 13px;" >To ensure that your company website reaches the top and is able to remain there,we provide a complete range of digital marketing services.</p>
              <ul style="font-size: 13px;">
                <li>Social Media Marketing </li>
                <li> Search Engine Optimization</li>
                <li>Search Engine Marketing </li>
                <li>Whatsapp Marketing</li>
                <li>Email Marketing</li>
                <li>SMS Marketing</li>
             </ul>
             <p><a class="btn btn-warning" data-toggle=modal data-target=#modal3 role="button">Get a Quote &raquo;</a></p>
          </div>
        </div>
      </div>
      <div class="col-md-4" style="float:left">
        <div class="card mb-4">
        <img id="grapimg" class="rounded-circle mx-auto d-block" alt="Graphic Designing Image" src="media/img/graphic.gif" />
        <div class="card-body">
          <h4 class="h4 card-title">Graphic Designing</h4>
          <p class="card-text" style="font-size: 13px;">We have a wide range of services for custom graphic design and convert your ideas and thoughts into innovative graphic designs that deliver superior results. </p>
            <ul style="font-size: 14px;" >
              <li>Business Card Designing <span style="color:#2a0a5e;font-size: 14px;">(Digital and Printed)</span></li>
              <li>Logo Designing </li>
              <li> Brochure Designing</li>
           </ul>
           <p><a class="btn btn-warning" data-toggle=modal data-target=#modal3 role="button">Get a Quote &raquo;</a></p>
          </div>
        </div>
      </div>
      <div class="col-md-4" style="float:left">
        <div class="card mb-4">
        <img id="brandimg" class="rounded-circle mx-auto d-block" alt="Branding Image" src="media/img/Branding.gif" />
        <div class="card-body">
          <h4 class="h4 card-title">Branding</h4>
          <p class="card-text" style="font-size: 13px;">There is more to your brand than just a logo, name or color scheme. At a very fundamental level, it is who you are as an organization.With our services we help organizations reach their audience in an elicit way.  </p>
            <ul style="font-size: 13px;" >
              <li>Brand name Development</li>
              <li>Creating Brand Logo </li>
              <li> Advertising</li>
               <li> Print AD,a Brochure Comm.</li>
           </ul>
           <a class="btn btn-warning" data-toggle=modal data-target=#modal3 role="button">Get a Quote &raquo;</a>
          </div>
        </div>
      </div>
 </div>


 <div class="modal fade" id="modal3" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
     <div class="modal-content">
        <div class="modal-header">
          <h2 style="color: #2a0a5e">Register</h2>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
           <span aria-hidden="true">&times;</span>
         </button>
        </div>
        <div class="modal-body">
           <form class="modal-content" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST" >
              <div class="container">
                 <label class="label" for="name3"><b>Name</b></label>
                <input type="text" name="name3" class="form-control" id="name3" placeholder="Name" required />

                <label class="label" for="email3"><b>Email</b></label>
                <input type="email" name="email3" class="form-control" id="email3" placeholder="name@example.com" />

                <label class="label" for="phone3"><b>Enter your number:</b></label>
                <input type="tel" name="phone3" class="form-control" id="phone3" placeholder="Number" required />

                <label class="label" for="services"><b>Services</b></label>
                <select class="custom-select" id="services" name="services">
                  <option value="SERVICE NEEDED">SELECT SERVICE NEEDED</option>
                  <option value="BUSINESS PROCESS DEVELOPMENT">Business Process Development</option>
                     <option value="WEB DESIGNING AND DEVELOPMENT">Web desigining and development</option>
                     <option value="MOBILE APP DEVELOPMENT">Mobile App development</option>
                     <option value="DIGITAL MARKETING">Digital Marketing</option>
                     <option value="GRAPHIC DESIGNING">Graphic Designing</option>
                     <option value="BRANDING">Branding</option>
                     
                  </select> 
                    <div class="modal-footer">
                      <button type=button class="btn btn-warning" data-dismiss=modal>Close</button>
                      <button type=submit class="btn btn-warning" name="servicessubmit">Submit</button>
                    </div>
                 </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div> 
    </div>
  </div>
<footer class="container-fluid container-fluid1 justify-content-center">
  <div class="row justify-content-center py-3">
  <div class=col-md-3 style=text-align:left>
  <h5 class=brandName style=color:#2a0a5e>DharwadHubballiTutor</h5>
  <address style=color:aliceblue>
  <p>J G Nippani Complex, <br />Beside SBI Gandhinagar, <br />Dharwad.</p>
  <a class="footer-a" href="tel:+919741237334" style="padding: 5px">+919741237334</a><br />
  <a class=footer-a href=tel:+918007961759 style=padding:5px>+918007961759</a>
  <br />
  <a class=footer-a href="mailto:dharwadhubballitutor@gmail.com">dharwadhubballitutor@gmail.com</a>
  </address>
  </div>
  <div class=col-md-6 style=text-align:left >
  <h6><u>Important Links</u></h6>
  <div class=row>
    <div class=col-md-6 >
      <ul class=list-unstyled>
  <li>
  <a class=footer-a href=index.php>Home </a>
  </li>
  <li>
  <a class=footer-a href=Internship.php>Internships</a>
  </li>
  <li>
  <a class=footer-a href=Contact.php>Contact Us</a>
  </li>
  <li>
  <a class=footer-a href=Web-Designing-and-Development-Training.php>Web development</a>
  </li>
  <li>
  <a class=footer-a href=Python-Programming-Training.php>Python Programming</a>
  </li>
  </ul>
  </div>
  <div class=col-md-6 style=text-align:left>
  <ul class=list-unstyled>
  <li>
  <a class=footer-a href=Cloud-Computing-Training.php>Cloud computing</a>
  </li>
  <li>
  <a class=footer-a href=Civil-Design-Softwares-Training.php>Civildesign</a>
  </li>
  <li>
  <a class=footer-a href=Digital-Marketing-Training.php>Digital Marketing</a>
  </li>
  <li>
  <a class=footer-a href=Android-Development-Training.php>Android Development</a>
  </li>
  <li>
  <a class=footer-a href=Programming-Languages-Training.php>Programming Language</a>
  </li>
  <li>
                  <a class="footer-a" href="Tally-GST-Training.php">Tally & GST Training</a>
                </li>
  </ul>
  </div>
  </div>
  </div>
  <div class="col-md-3">
  <h6><u>Follow us</u></h6>
  <a class="social-icon fbicon" target=_blank rel="noopener" href=https://www.facebook.com/DharwadhubballiTutor><i class="fab fa-facebook fa-2x fbicon"></i></a>
  <a class="social-icon twittericon" target=_blank rel="noopener" href=https://twitter.com/DharwadTutor><i class="fab fa-twitter fa-2x twittericon"></i></a>
  <a class="social-icon instaicon" target=_blank rel="noopener" href=https://www.instagram.com/dharwadhubballitutor><i class="fab fa-instagram fa-2x instaicon"></i></a>
  <a class="social-icon instaicon" target=_blank rel="noopener" href=http://www.linkedin.com/in/dharwadhubballitutor><i class="fab fa-linkedin fa-2x linkedinicon"></i></a>
  <a class="social-icon whatsappicon" target=_blank rel="noopener" href="https://api.whatsapp.com/send?phone=919741237334&amp;text=Hithere!Ihaveaquestion"><i class="fab fa-whatsapp fa-2x whatsappicon"></i></a>
  <br />
  <br />
  <div class=text-center>
  <div class=col-md-7>
  <span data-toggle=modal data-target=#modal2>
  <button type=button class="btn btn-danger" data-toggle=tooltip data-placement=bottom title="For Training or Internship">ENROLL</button>
  </span>
  </div>
  </div>
  </div>
  </div>
  <div class="row">
    <div class="col-md-12">
      <p>&copy; Copyright  <script>document.write(new Date().getUTCFullYear())</script>  <span class=brandName>DharwadHubballiTutor</span> 
      </p>
    </div>
  </div>
  </footer>
  <div class="modal fade" id=modal2 tabindex=-1 role=dialog aria-hidden=true>
    <div class="modal-dialog modal-dialog-centered" role=document>
    <div class=modal-content>
      <div class=modal-header>
        <h3 style=color:#2a0a5e>Enroll Now</h3>
      <button type=button class=close data-dismiss=modal aria-label=Close>
      <span aria-hidden=true>&times;</span>
      </button>
      </div>
    <div class=modal-body>
    <form class=modal-content action="" method=POST >
    <div class=container>
    
    <p style=color:#2a0a5e>Please fill in this form.</p>
    <label class=label for=name2><b>Name</b></label>
    <input type=text name=name2 class=form-control id=name2 placeholder=Name required />
    <label class=label for=email2><b>Email</b></label>
    <input type=email name=email2 class=form-control id=email2 placeholder=name@example.com />
    <label class=label for=phone2><b>Enter your number:</b></label>
    <input type=tel name=phone2 class=form-control id=phone2 placeholder=Number required />
    <label class=label for=trainings2><b>Trainings</b></label>
    <select class=custom-select id=trainings2 name=trainings2>
      <option value="SELECT YOUR INTEREST">Select your Interest</option>
      <?php
          foreach ($courselist as $course){
            echo "<option value='".$course->get_cname()."'>".$course->get_cname()."</option>";
          }
      ?>
  </select><br />
    <label class=label for=internship2><b>Internships</b></label>
    <select class=custom-select id=internship2 name=internship2>
    <option value="SELECT YOUR INTEREST">Select your Interest</option>
    <option value="Web Designing and Development">Web Designing and Development</option>
    <option value="Python Programming">Python Programming</option>
    <option value="Digital Marketing">Digital Marketing</option>
    <option value="Android Development">Android Development</option>
    </select>
    <br />
    <div class=modal-footer>
    <button type=button class="btn btn-warning" data-dismiss=modal>Close</button>
    <button type=submit class="btn btn-warning" name="footerformsubmit">Submit</button>
    </div>
    </div>
    </form>
    </div>
    </div>
    </div>
    </div>
  
  
<div class="modal fade" id="myModal" tabindex="-1" role="dialog"  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h3 class="modal-title">Would appreciate your ratings</h3>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <img src="media/img/Starrating.gif" class="img-fluid" alt="Stars" width=466 height=130>
      </div>
      <div class="modal-footer">
        <a href="https://g.page/dharwadhubballitutor/review?gm" class="btn btn-warning">Rate Now</a>
        
      </div>
    </div>
  </div>
</div>
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h2 style="color: #2a0a5e">Register</h2>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="modal-content" action="" method="POST" >
          <div class="container">
            <p style="color: #2a0a5e">Please fill in this form.</p>
            <hr />
            <label class="label" for="name"><b>Name</b></label>
            <input type="text" name="name" class="form-control" id="name" placeholder="Name" required />

            <label class="label" for="email"><b>Email</b></label>
            <input type="email" name="email" class="form-control" id="email" placeholder="name@example.com" />

            <label class="label" for="phone"><b>Enter your number:</b></label>
            <input type="tel" name="phone" class="form-control" id="phone" placeholder="Number" required />

            <label class="label" for="trainings"><b>Trainings</b></label>
            <select class="custom-select" id="trainings" name="trainings">
              <option value="">Select your Interest</option>
              <?php
                    foreach ($courselist as $course){
                      echo "<option value='".$course->get_cname()."'>".$course->get_cname()."</option>";
                    }
              ?>
            </select>
            <div class="modal-footer">
              <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-warning" name="regformsubmit">Submit</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>

<script>
  setTimeout(function() {
    $('#myModal').modal();
  }, 30000);
  </script>
</body>
</html>
<?php

require "Model/Registration.php";
require "Utilities/Sanitization.php";
require "DB Operations/RegistrationOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST"){
    
    if (isset($_POST['servicessubmit']))
    {
      $reg=new Registration();
      $reg->set_name(Sanitization::test_input($_POST["name3"]));
      $reg->set_email(Sanitization::test_input($_POST["email3"]));
      $reg->set_phone(Sanitization::test_input($_POST["phone3"]));
      $reg->set_services(Sanitization::test_input($_POST["services"]));
      DBregistration::insert($reg);
      echo "<meta http-equiv='refresh' content='0'>";
    }elseif (isset($_POST['footerformsubmit']))
    {
      
        $reg=new Registration();
        $reg->set_name(Sanitization::test_input($_POST["name2"]));
        $reg->set_email(Sanitization::test_input($_POST["email2"]));
        $reg->set_phone(Sanitization::test_input($_POST["phone2"]));
        $reg->set_trainings(Sanitization::test_input($_POST["trainings2"]));
        $reg->set_internship(Sanitization::test_input($_POST["internship2"]));
        DBregistration::insert($reg);
        echo "<meta http-equiv='refresh' content='0'>";
    
       
    }elseif (isset($_POST['regformsubmit']))
    {
      
        $reg=new Registration();
        $reg->set_name(Sanitization::test_input($_POST["name"]));
        $reg->set_email(Sanitization::test_input($_POST["email"]));
        $reg->set_phone(Sanitization::test_input($_POST["phone"]));  
        $reg->set_trainings(Sanitization::test_input($_POST["trainings"]));
        DBregistration::insert($reg); 
        echo "<meta http-equiv='refresh' content='0'>";
    }else{
      echo "No results found";
    }
    
  }
  
?>





