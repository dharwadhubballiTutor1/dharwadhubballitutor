<?php
 require_once "DB Operations/dbconnection.php";
  require_once "Admin/DB Operations/CoursesOps.php";
  require_once "Admin/Model/Coursesmodel.php";
  $courselist=DBcourse::selectall();
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Best Training Institute for Tally and GST in Dharwad.</title>
    <link rel="icon" href="media/img/favicon.png" type="image/png" sizes="96x96" />
    <meta name="viewport" content="width=device-width,initial-scale=1.0" />
    <meta charset="utf-8" />
    <meta name="description" content="Want to build your website but have no idea where to begin with??then od visit us at DharwadHubballiTutor where we help you fulfill your dream with our excellent training in Website Designing and Development" />
    <meta name="keywords" content="web designing and development course in dharwad,web design course,web development course,web designing training,web designing coaching,web develpoment coaching in dharwad,web development coaching near me,how to design website,web development training in dharwad,	web designing and development services,Website designing and develpoment training institute,web designing coaching in dharwad,web designing coaching near me,website development,website designing,website designer,website developer,build website,website building," />
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
    <div id="banner" class="container" >
        <div class="row">
            <img src="media\img\tally.png" alt="Tally & GST logo" class="img-fluid col-2" id="banner-img">
         </div>
      <h1 id="tallyTitle" class=col-10>Tally & GST Training</h1>
    </div>
    <br />
    <div class="container">
      <div class="w-100 text-light">
        <h3 class="h3">What is Tally & GST Course?</h3>
        <br />
        <p class="p2">Tally is an accounting program that works great when it comes to doing analyses in small and mid-sized companies. This program allows you to perform all banking, auditing, and accounting tasks. Tally's accounting features allow you to quickly and easily document business transactions. Keep track of the transactions that are required for your company.</p>
      </div>
    </div>
    <div class="container">
      <div class="w-100 text-light">
        <h3 class="h3">Tally & GST Course Details – Eligibility, Fee, Duration, Syllabus, Colleges, Salary</h3>
        <br />
        <p class="p2">Looking for a job in accounting taxation or payroll? We will suggest a course that makes your career bright in accounting. Tally & GST is one such course in Accounting which can help you climb your career ladder at a faster pace. We tried explaining complete information that can be useful for you related to Tally Course. Find details such as Tally Course Duration, Eligibility & Requirements, Colleges that offer Tally Course, Salary, etc. Have an idea what is Tally all about and why it is important by referring further.</p>
      </div>
    </div>
    <div class="container">
    <table class="table table-bordered " id="tallyTable">
    <caption id="tallyCaption"><h3 class="h3" >Tally Course Details</h3></caption>
  <thead id="tallyTableHeader">
    <tr>
      <th scope="col">Course</th>
      <th scope="col">Tally & GST</th>
    </tr>
  </thead>
  <tbody >
    <tr>
      <td>Full form</td>
      <td>Transactions Allowed in a Linear Line Yards</td>
    </tr>
    <tr>
      <td>Eligibility & Requirement</td>
      <td>10+2 or equivalent</td>
    </tr>
    <tr>
      <td>Course Type</td>
      <td>Regular mode</td>
    </tr>
    <tr>
      <td>Starting salary offered</td>
      <td>Rs. 12,000 to 15,000 per month</td>
    </tr>
    <tr>
      <td>Advance Courses</td>
      <td>Diploma in Tally</td>
    </tr>
    <tr>
      <td>Employment opportunities</td>
      <td>Banking Sector, MNC Companies.</td>
    </tr>
  </tbody>
</table>
  </div>

    <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">Eligibility Criteria for Tally & GST</h3>
        <br />
        <ul>
            <li><span>Candidate must complete 10+2 equivalent with required aggregate from a recognized college.</span></li>
            <li><span>Should have basic knowledge of Business Management.</span></li>
            <li><span>Students who want to undergo Tally Accounting Course after graduation should hail from commerce background.</span></li>
        </ul>
      </div>
    </div>
    
    <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">Tally & GST Course Fees and Duration</h3>
        <br />
        <ul>
            <li><span>Tally Course Fee is low for the basic course it is 4,000 around and for the advance course, it is 8,000. Thus, students who wish to join the Tally Computer Course can join easily.</span></li>
            <li><span>Tally ERP Course can be learned within 2 months. In the first month, you will have a basic understanding and in the second month, you will have a bit advanced concepts like GST, TDS, Service Tax Payroll, etc.</span></li>
        </ul>
      </div>
    </div>

    <div class="container">
      <div class="w-100 text-light">
        <br />
        <h3 class="h3">Syllabus and Features of Tally & GST Course </h3>
        <br />
        <h5 class="h5">Accounting</h5>
        <p class="p2">It is Tally ERP's most important feature. After hearing about Tally, the first thing that comes to mind for most people is accounting.</p>
        <h5 class="h5">Billing</h5>
        <p class="p2">Billing is an important aspect of every business. When you synchronously pass an accounting entry, a bill is issued, which you can use to raise or submit an invoice. When it comes to financing, most people believe that billing is synonymous with accounting. This is not the case. Tally's Billing Choice removes the need for separate accounting entries.</p>
        <h5 class="h5">Payroll</h5>
        <p class="p2">When you have a large number of workers, this feature comes in handy. Employee classes, employee categories, pay heads, attendance, and course employees are all included in Tally to keep track of payroll.</p>
        <h5 class="h5">Banking</h5>
        <p class="p2">No company will thrive in this age of digitalization without banking. Tally ERP can measure TDS GST for both direct and indirect taxes, and returns can be submitted electronically.</p>
        <h5 class="h5">Taxation</h5>
        <p class="p2">Any organization that wants to succeed does not function in isolation. Businesses should cooperate with both the state and federal governments by paying the necessary taxes. Taxation based on profits, sales, and dispatch is a time-consuming operation. Tally makes it simple to file every bill or invoice since it can calculate VAT, income tax, excise tax, customs duty, service tax, and other taxes.</p>
        <h5 class="h5">Inventory</h5>
        <p class="p2">Stock management is vital to the success of every company. It's important because it gives you more leverage over your company's revenues. As a result, stock movement is an important aspect that can be managed.</p>
        
       </div>
    </div>

    <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">Concepts or Modules in Tally & GST</h3>
        <br />
        <ul>
            <li><span>Fundamentals of accounting</span></li>
            <li><span>Introduction of Tally</span></li>
            <li><span>Meaning of company creation and opening accounting in Tally</span></li>
            <li><span>Opening a ledger account and how to create a voucher</span></li>
            <li><span>How to modify a company or industry detail</span></li>
            <li><span>How to set the features of a company</span></li>
            <li><span>Selecting the cost category and cost center</span></li>
            <li><span>How to create a go down and how to maintain an inventory</span></li>
            <li><span>How to set price list and the budget</span></li>
            <li><span>A brief introduction of F11 and F12</span></li>
            <li><span>How to produce profit and loss balance sheet from accounting</span></li>
            <li><span>Introduction to VAT</span></li>
            <li><span>Calculation of VAT</span></li>
            <li><span>Introduction to TDS</span></li>
            <li><span>Calculation of TDS</span></li>
            <li><span>How to add excise duty and customs duty</span></li>
        </ul>
      </div>
    </div>

 <div class="container">
      <div class="w-100 text-light">
          <h3 class="h3">Job Opportunities and Career Prospects</h3>
        <br />
        <ul>
            <li><span>Accountant</span></li>
            <li><span>Accounts Executive</span></li>
            <li><span>Tally Operator</span></li>
            <li><span>Tally Accounts Manager</span></li>
            <li><span>Service Coordinate with Tally</span></li>
            <li><span>Tally Junior Accountant</span></li>
            <li><span>Tax Accountant</span></li>
            <li><span>Accounting Assistant</span></li>
            <li><span>Supervisory Accountant</span></li>
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
          <p class="p2">
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
