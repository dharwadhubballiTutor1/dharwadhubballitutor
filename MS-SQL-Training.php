<?php
 require_once "DB Operations/dbconnection.php";
  require_once "Admin/DB Operations/CoursesOps.php";
  require_once "Admin/Model/Coursesmodel.php";
  $courselist=DBcourse::selectall();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Best Training Institute for SQL in Dharwad.</title>
    <link rel="icon" href="media/img/favicon.png" type="image/png" sizes="96x96" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="description" content="SQL is the standard programming language used to design, build and maintain relational databases. Relational structures are made up of a series of tables containing rows and columns of data." />
    <meta name="keywords" content="SQL,SQL Training,sql,Data Base,SQL course,,SQL Database training near me,sql training in dharwad,database training in dharwad,dhardawhubballitutor training" />
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
    <nav class="navbar navbar-expand-md bg-light">
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="true" aria-label="Toggle navigation">
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
<a class=dropdown-item href=MS-SQL-Training.php>School Academics</a>
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
    <div  class="container-fluid" >
  <div class="row">
    <div class="col-md-1"></div>
    <div id ="banner" class="col-md-10">
    <div class="row align-items-center" style="width=100%;">
      <div class="col-md-2">
      <img src="media\img\sql.jpg" alt="Tally Logo" class="img-fluid" id="banner-img">
      </div>
      <div class="col-md-8" id="bannerHeading">
      <h1 id="bannerTitle display-1 text-center">SQL Training</h1>
      </div>
      <div class="col-md-2">
      <img src="media\img\sqlimg.jpg" alt="Tax" class="img-fluid" id="banner-img">
      </div>
    </div>
    </div>
    <div class="col-md-1"></div>
  </div>
    <br />
    <div class="container">
      <div class="w-100 text-light">
        <h3 class="h3">What is SQL Course?</h3>
        <br />
        <p class="p2">SQL is the standard programming language used to design, build and maintain relational databases. Relational structures are made up of a series of tables containing rows and columns of data. Each row in a table contains a data value for the intersecting column, and each column represents a type of data, such as a customer name or address.</p>
      </div>
    </div>
    <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">SQL has the following features:</h3>
        <br />
        <ul>
            <li><span>Changing the table and index structures in a database</span></li>
            <li><span>Table development and other database projects</span></li>
            <li><span>Retrieving data from a database for transaction processing and analytics by adding, modifying, and removing rows of data</span></li>
        </ul>
      </div>
    </div>
    <div class="container">
      <div class="w-100 text-light">
        <h3 class="h3">SQL Course Details – Eligibility, Fee, Duration, Syllabus, Colleges, Salary</h3>
        <br />
        <p class="p2">Want to become a data analyst, data developer, or data scientist? We will suggest a course that makes your career bright in the IT industry. SQL is a powerful method for searching through vast volumes of data and retrieving relevant data for analysis. We tried explaining complete information that can be useful for you related to SQL Course. Find details such as SQL Course Duration, Eligibility & Requirements, Salary, etc. Have an idea of what is SQL all about and why it is important by referring further.</p>
      </div>
    </div>
    <div class="container">
    <table class="table table-bordered " id="tallyTable">
    <caption id="tallyCaption"><h3 class="h3" >SQL Course Details</h3></caption>
  <thead id="tallyTableHeader">
    <tr>
      <th scope="col">Course</th>
      <th scope="col">SQL</th>
    </tr>
  </thead>
  <tbody >
    <tr>
      <td>Full form</td>
      <td>Structured Query Language</td>
    </tr>
    <tr>
      <td>Eligibility</td>
      <td>Graduation</td>
    </tr>
    <tr>
      <td>Course Type</td>
      <td>Regular mode</td>
    </tr>
    <tr>
      <td>Starting salary offered</td>
      <td>Rs. 9,000 to 12,000 per month</td>
    </tr>
    <tr>
      <td>Jobs that demand SQL</td>
      <td>Data Analyst, Database Developer, Data Scientist, SQL Server Developer, .Net Developer,  Big Data engineer </td>
    </tr>
  </tbody>
</table>
  </div>

    <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">Eligibility Criteria for SQL</h3>
        <br />
        <ul>
            <li><span>Candidate must be Graduated</span></li>
            <li><span>Students with basic or no knowledge of programming language can also learn SQL</span></li>
        </ul>
      </div>
    </div>
    
    <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">SQL Course Fees and Duration</h3>
        <br />
        <ul>
            <li><span>SQL Course Fee is low for the basic course it is 4,000 around and for the advance course, it is 8,000. Thus, students who wish to join the sql Computer Course can join easily.</span></li>
            <li><span>SQL Course can be learned within 1 to 2 months. In the first month, you will have a basic understanding and in the second month, you will learn advanced concept.</span></li>
        </ul>
      </div>
    </div>

    <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">Concepts or Modules in SQL</h3>
        <br />
        <ul>
        <li><span> SQL Server  Installation</span></li>
        <li><span> BASIC DDL, DML – ARCHITECTURE</span></li>
        <li><span> SQL SERVER DATABASE DESIGN</span></li>
        <li><span>TABLE DESIGN & SIMPLE QUERIES</span></li>
        <li><span>CONSTRAINTS and KEYS</span></li>
        <li><span>JOINS & TUNING OPTIONS</span></li>
        <li><span> VIEWS and SUB QUERIES</span></li>
        <li><span>FUNCTIONS & SUB QUERIES</span></li>
        <li><span> STORED PROCEDURES – BASICS</span></li>
        <li><span>STORED PROCs @ CURSORS, CTE</span></li>
        <li><span>TRIGGERS & TRANSACTIONS</span></li>
        <li><span>TRIGGERS & TRANSACTIONS</span></li>
        <li><span> INDEXES & QUERY TUNING</span></li>
        <li><span>BACKUPS – DB, FILEGROUP, FILE</span></li>
        <li><span>RESTORES & DATABASE RECOVERY</span></li>
        <li><span> JOBS, SQL SERVER AGENT, DB MAIL</span></li>
        </ul>
      </div>
    </div>

 <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">Job Opportunities and Career Prospects</h3>
        <br />
        <ul>
            <li><span>Business Analyst</span></li>
            <li><span>Senior Software Engineer</span></li>
            <li><span>Senior SQL Server Database Administrator</span></li>
            <li><span>Quality Assurance Tester</span></li>
            <li><span>.Net Developer</span></li>
            <li><span>Systems Administrator</span></li>
            <li><span>Software Engineer</span></li>
            <li><span>SQL Server Developer</span></li>
            <li><span>Quality Assurance Analyst</span></li>
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
            <form class="modal-content" action="action-page.php" method="POST">
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
                  <button type="submit" class="btn btn-warning">Submit</button>
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
            <div class="col-md-6">
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
          <h6><u>Follow us</u></h6>
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
            <form class="modal-content" action="footermodal-action.php" method="POST">
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
                  <button type="submit" class="btn btn-warning">Submit</button>
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
