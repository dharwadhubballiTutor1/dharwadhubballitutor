<?php
 require_once "DB Operations/dbconnection.php";
  require_once "Admin/DB Operations/CoursesOps.php";
  require_once "Admin/Model/Coursesmodel.php";
  $courselist=DBcourse::selectall();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Best Python Programming Training in Dharwad.</title>
    <link rel="icon" href="media/img/favicon.png" type="image/png" sizes="96x96" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="description" content="Python is powrful general-purpose object-oriented programming language.Thanks to its versatility, it continues to be the instrument of choice for data processing and visualization firms.With DharwadHubballiTutor's Python programming language training we enable you to speak the language of data. " />
    <meta name="keywords" content="Python Programming,python,python programming training,python programming training in dharwad,python language,python coaching in dharwad,python coaching,python language,python language training, python language coaching in dharwad,python tutorial in dharwad,python tutorial,python basics,python programming for beginners,python for beginners in dharwad, " />
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

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
</div>
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
        <source srcset="media/img/pythonmobile.jpg" media="(max-width: 768px)" />
        <img src="media/img/PythonWELCOME.jpg" alt="Python Programming" class="img-fluid" />
      </picture>
    </div>
    <br />
    <div class="container">
      <div class="row row-eq-height">
        <div class="w-100 text-light">
          <div class="row">
            <div class="col-md-6">
              <h4 class="h4">WHAT IS PYTHON PROGRAMMING??</h4>
              <br />
              <p style="font-size: 18px">Python is an interpreted,high-level and general purpose programming language.It is being used for:</p>
              <ul>
                <li><span>Development of Website (server-side).</span></li>
                <li><span>Software Development.</span></li>
                <li><span>In mathematics.</span></li>
                <li><span>System Scripting.</span></li>
              </ul>
              <br />
            </div>
            <div class="col-md-6">
              <h4 class="h4">WHY LEARN PYTHON PROGRAMMING?</h4>
              <br />
              <ul>
                <li><span>Python’s popularity & high salary</span></li>
                <li><span>Python is simple & easy to learn</span></li>
                <li><span>Python is portable & extensible</span></li>
                <li><span>Python is used in Data Science</span></li>
                <li><span>Python is used in scripting & automation</span></li>
                <li><span>Python used with Big Data</span></li>
                <li><span>Python supports Testing</span></li>
                <li><span>Computer Graphics in Python</span></li>
                <li><span>Python used in Artificial Intelligence</span></li>
                <li><span>Python in Web Development</span></li>
              </ul>
              <br />
            </div>
          </div>
          <div class="row">
            <div class="col-md-6">
              <h4 class="h4">CAREER AND JOBS</h4>
              <br />
              <p style="font-size: 18px">In contrast to other programming languages such as R, Scala, Java, Python certifications will easily help one land job.Here's a list of opportunities for python careers that a python programmer may choose for.</p>
              <ul>
                <li><span>Python Developer</span></li>
                <li><span>Data Scientist/Sr.Data Scientist</span></li>
                <li><span>DevOps Engineeer</span></li>
                <li><span>Data Analyst</span></li>
                <li><span>Software Engineer</span></li>
                <li><span>Machine Learning Engineer </span></li>
                <li><span>Quality Assurance Engineer</span></li>
                <li><span>GIS Analyst</span></li>
              </ul>
              <br />
            </div>
            <div class="col-md-6">
              <h4 class="h4">COURSE SYLLABUS</h4>
              <br />
              <ul>
                <li><span>Introduction to Python</span></li>
                <li><span>Environment Setup</span></li>
                <li><span>Control Statements</span></li>
                <li><span>List,Ranges & Tuples in Python</span></li>
                <li><span>Python Dictionaries & Sets</span></li>
                <li><span>Input/Output in Python</span></li>
                <li><span>Python Built-in Functions</span></li>
                <li><span>Python Object-Oriented</span></li>
                <li><span>Exceptions</span></li>
                <li><span>Python Regular Expressions</span></li>
                <li><span>Python Multithreaded Programming</span></li>
                <li><span>Using Database in Python</span></li>
              </ul>
            </div>
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
                  <option value="SELECT YOUR INTEREST">Select your Interest</option>
                  <?php
                      foreach ($courselist as $course){
                        echo "<option value='".$course->get_cname()."'>".$course->get_cname()."</option>";
                      }
                  ?>
                  </select
                ><br />

                <label class="label" for="internship2"><b>Internships</b></label>
                <select class="custom-select" id="internship2" name="internship2">
                  <option value="SELECT YOUR INTEREST">Select your Interest</option>
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
