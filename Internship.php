<?php
 require_once "DB Operations/dbconnection.php";
  require_once "Admin/DB Operations/CoursesOps.php";
  require_once "Admin/Model/Coursesmodel.php";
  $courselist=DBcourse::selectall();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Great Internships in Dharwad.</title>
    <link rel="icon" href="media/img/favicon.png" type="image/png" sizes="96x96" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="description" content="Get experience before you complete your graduation,DharwadHubballiTutor offers internships on Live projects which will boost your career." />
    <meta name="keywords" content="Internships in Dharwad,Internships,Digital Marketing internship,Android internship,Web designing Internship,web development Internship,Python Internship,Civil design software internship,civil design softwares internship in dharwad,python internship in dharwad,web designing internship in dhawrad,web development internship in dharwad,digital marketing internship in dharwad." />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link rel="preconnect" href="https://fonts.gstatic.com" />
    <link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@100&display=swap" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/dharwadhubballitutor.css" />
    <link href="https://allfont.net/allfont.css?fonts=league-spartan" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.7/css/all.css" />
    <link href="https://fonts.googleapis.com/css2?family=Libre+Baskerville&display=swap" rel="stylesheet" />
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
      <div class="row">
        <div class="col-md-6">
          <!-- <img src="media/img/logo.png" class="logoimg" alt="DharwadHubballiTutor logo" /> -->
          <a class="navbar-brand brandName" href="#">DharwadHubballiTutor</a>
          <br />

          <a class="social-icon fbicon" target="_blank" rel="noopener" href="https://www.facebook.com/DharwadhubballiTutor"><i class="fab fa-facebook fa-lg fbicon fbheader"></i></a>
          <a class="social-icon twittericon" target="_blank" rel="noopener" href="https://twitter.com/DharwadTutor"><i class="fab fa-twitter fa-lg twittericon twitterheader"></i></a>
          <a class="social-icon instaicon" target="_blank" rel="noopener" href="https://www.instagram.com/dharwadhubballitutor/"><i class="fab fa-instagram fa-lg instaicon instaheader"></i></a>
          <a class="social-icon instaicon" target="_blank" rel="noopener" href="http://www.linkedin.com/in/dharwadhubballitutor"><i class="fab fa-linkedin fa-lg linkedinicon linkedinheader"></i></a>
          <a class="social-icon whatsappicon" target="_blank" rel="noopener" href="https://api.whatsapp.com/send?phone=919741237334&amp;text=Hi there! I have a question :)"><i class="fab fa-whatsapp fa-lg whatsappicon whatsappheader"></i></a>
        </div>
        <div class="col-md-6">
          <div class="semicircle">
            <a class="blink_me" href="Job-Assistance.php"> Job Assistance</a>
          </div>
          <div class="container">
            <a href="Job-Assistance.php" class="mobileshow btn-btn-outline-warning" role="button">Job Assistance</a>
          </div>
        </div>
        <div class="col text-right">
          <a style="color: white" href="tel:+919741237334">+919741237334</a>
          <a style="color: white" href="tel:+918007961759">+918007961759</a>
        </div>
      </div>
    </div>
    <br />
    <nav class="navbar navbar-expand-sm bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
        <i class="fa fa-bars"></i>
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNavDropdown">
        <ul class="navbar-nav mx-auto">
          <li class="nav-item active">
            <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Aboutus.php">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Contact.php">Contact</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> Trainings </a>
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
<a class=dropdown-item href=MS-SQL-Training.php>SQL Training</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Internship.php">Internships</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="Services.php">Services</a>
          </li>
        </ul>
        <ul class="navbar-nav">
          <li class="nav-item">
            <a href="action-page.php" class="nav-item nav-link px-2" data-toggle="modal" data-target="#exampleModalCenter">Register</a>
          </li>
        </ul>
      </div>
    </nav>
    <br />
    <div style="text-align: center">
      <picture>
        <source srcset="media/img/internshipmobile.jpg" media="(max-width: 768px)" />
        <img src="media/img/InternshipWELCOME.jpg" alt="Internship image" class="img-fluid" />
      </picture>
    </div>
    <br />
    <div class="container">
      <div class="w-100 text-light">
        <h3 class="h3">WHY IS AN INTERNSHIP IMPORTANT</h3>
        <p class="p2">In today's age, an internship is a vital part of a student's future. Based on their previous volunteering and internship experience, graduates are provided with jobs, serving a significant advantage in their careers. In addition, as a working professional, it also helps you to obtain first-hand experience while helping you to learn expertise, knowledge & understanding of the workings of a workplace.</p>
        <br />
        <h3 class="h3">WE PROVIDE INTERNSHIP ON BELOW MENTIONED SUBJECTS</h3>
        <ul>
          <li><span>Web Designing and Development</span></li>
          <li><span>Civil Design Softwares</span></li>
          <li><span>Digital Marketing</span></li>
          <li><span>Android Development</span></li>
          <li><span>Graphic Designing</span></li>
        </ul>
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
            <form class="modal-content" action="" method="POST">
              <div class="container">
                <label class="label" for="name"><b>Name</b></label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Name" required />

                <label class="label" for="email"><b>Email</b></label>
                <input type="email" name="email" class="form-control" id="email" placeholder="name@example.com" />

                <label class="label" for="phone"><b>Enter your number:</b></label>
                <input type="tel" name="phone" class="form-control" id="phone" placeholder="Number" required />

                <label class="label" for="trainings"><b>Trainings</b></label>
                <select class="custom-select" id="trainings" name="trainings">
                  <option value="SELECT YOUR INTEREST">Select your Interest</option>
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
    <footer class="container-fluid container-fluid1 justify-content-center">
      <div class="row justify-content-center py-3">
        <div class="col-md-3" style="text-align: left">
          <h5 class="brandName" style="color: #2a0a5e">DharwadHubballiTutor</h5>
          <address style="color: aliceblue">
            <p>J G Nippani Complex, <br />Beside SBI Gandhinagar, <br />Dharwad.</p>

            <a class="footer-a" href="tel:+919741237334" style="padding: 5px">+919741237334</a><br />
            <a class="footer-a" href="tel:+918007961759" style="padding: 5px">+918007961759</a>

            <br />
            <a class="footer-a" href="mailto:dharwadhubballitutor@gmail.com">dharwadhubballitutor@gmail.com</a>
          </address>
        </div>
        <div class="col-md-6">
          <h6>Important Links</h6>
          <div class="row">
            <div class="col-md-6">
              <ul class="list-unstyled">
                <li>
                  <a class="footer-a" href="index.php">Home </a>
                </li>
                <li>
                  <a class="footer-a" href="Internship.php">Internships</a>
                </li>
                <li>
                  <a class="footer-a" href="Contact.php">Contact Us</a>
                </li>
                <li>
                  <a class="footer-a" href="Web-Designing-and-Development-Training.php">Web development</a>
                </li>
                <li>
                  <a class="footer-a" href="Python-Programming-Training.php">Python Programming</a>
                </li>
                <li>
<a class=footer-a href=MS-SQL-Training.php>SQL Training</a>
</li>
              </ul>
            </div>
            <div class="col-md-6" style="text-align: left">
              <ul class="list-unstyled">
                <li>
                  <a class="footer-a" href="Cloud-Computing-Training.php">Cloud computing</a>
                </li>
                <li>
                  <a class="footer-a" href="Civil-Design-Softwares-Training.php">Civildesign</a>
                </li>
                <li>
                  <a class="footer-a" href="Digital-Marketing-Training.php">Digital Marketing</a>
                </li>
                <li>
                  <a class="footer-a" href="Android-Development-Training.php">Android Development</a>
                </li>
                <li>
                  <a class="footer-a" href="Programming-Languages-Training.php">Programming Language</a>
                </li>
                <li>
                  <a class="footer-a" href="Tally-GST-Training.php">Tally & GST Training</a>
                </li>
              </ul>
            </div>
          </div>
        </div>

        <div class="col-md-3">
          <h6>Follow us</h6>
          <a class="social-icon fbicon" target="_blank" rel="noopener" href="https://www.facebook.com/DharwadhubballiTutor"><i class="fab fa-facebook fa-2x fbicon"></i></a>
          <a class="social-icon twittericon" target="_blank" rel="noopener" href="https://twitter.com/DharwadTutor"><i class="fab fa-twitter fa-2x twittericon"></i></a>
          <a class="social-icon instaicon" target="_blank" rel="noopener" href="https://www.instagram.com/dharwadhubballitutor/"><i class="fab fa-instagram fa-2x instaicon"></i></a>
          <a class="social-icon instaicon" target="_blank" rel="noopener" href="http://www.linkedin.com/in/dharwadhubballitutor"><i class="fab fa-linkedin fa-2x linkedinicon"></i></a>
          <a class="social-icon whatsappicon" target="_blank" rel="noopener" href="https://api.whatsapp.com/send?phone=919741237334&amp;text=Hi there! I have a question :)"><i class="fab fa-whatsapp fa-2x whatsappicon"></i></a>
          <br />
          <br />
          <div class="text-center">
            <div class="col-md-7">
              <span data-toggle="modal" data-target="#modal2">
                <button type="button" class="btn btn-danger" data-toggle="tooltip" data-placement="bottom" title="For Training or Internship">ENROLL</button>
              </span>
            </div>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <p>
            &copy; Copyright
            <script>
              document.write(new Date().getUTCFullYear())
            </script>
            <span class="brandName">DharwadHubballiTutor</span>
          </p>
        </div>
      </div>
    </footer>
    <div class="modal fade" id="modal2" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 style="color: #2a0a5e">Enroll Now</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <form class="modal-content" action="" method="POST">
              <div class="container">
                <label class="label" for="name2"><b>Name</b></label>
                <input type="text" name="name2" class="form-control" id="name2" placeholder="Name" required />

                <label class="label" for="email2"><b>Email</b></label>
                <input type="email" name="email2" class="form-control" id="email2" placeholder="name@example.com" />

                <label class="label" for="phone2"><b>Enter your number:</b></label>
                <input type="tel" name="phone2" class="form-control" id="phone2" placeholder="Number" required />

                <label class="label" for="trainings2"><b>Trainings</b></label>
                <select class="custom-select" id="trainings2" name="trainings2">
                  <option value="">Select your Interest</option>
                  <?php
                        foreach ($courselist as $course){
                          echo "<option value='".$course->get_cname()."'>".$course->get_cname()."</option>";
                        }
                  ?>
                  </select
                ><br />

                <label class="label" for="internship2"><b>Internships</b></label>
                <select class="custom-select" id="internship2" name="internship2">
                  <option value="">Select your Interest</option>
                  <option value="Web Designing and Development">Web Designing and Development</option>
                  <option value="Python Programming">Python Programming</option>
                  <option value="Digital Marketing">Digital Marketing</option>
                  <option value="Android Development">Android Development</option>
                </select>
                <br />
                <div class="modal-footer">
                  <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                  <button type="submit" class="btn btn-warning" name="footerformsubmit">Submit</button>
                </div>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <!-- <div id="loading" class="container-fluid row">
      <div class="col-md-12 text-center">
        <iframe src="https://giphy.com/embed/xFmuT64Jto3mRO4w3G" width="480" height="360" frameborder="0" class="giphy-embed" allowfullscreen></iframe>
        <p><a href="https://giphy.com/gifs/oc-css-hourglass-xFmuT64Jto3mRO4w3G">via GIPHY</a></p>
      </div>
    </div>
    <script>
      $(window).on("load", function () {
        $("#loading").hide()
      })
    </script> -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h3 class="modal-title">Would appreciate your ratings</h3>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <img src="media/img/Starrating.gif" class="img-fluid" alt="Stars" width="466" height="130" />
          </div>
          <div class="modal-footer">
            <a href="https://g.page/dharwadhubballitutor/review?gm" class="btn btn-warning">Rate Now</a>
          </div>
        </div>
      </div>
    </div>

    <script>
      setTimeout(function () {
        $("#myModal").modal()
      }, 30000)
    </script>
    <script>
      $(document).ready(function () {
        $('[data-toggle="tooltip"]').tooltip()
      })
    </script>
  </body>
</html>

<?php
require "Model/Registration.php";
require "Utilities/Sanitization.php";
require "DB Operations/RegistrationOps.php";

  if ($_SERVER["REQUEST_METHOD"] == "POST"){
    
    if (isset($_POST['footerformsubmit']))
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
