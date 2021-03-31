<?php 
require_once "DB Operations/dbconnection.php";
require_once "Admin/Model/Coursesmodel.php";
require_once "Admin/DB Operations/CoursesOps.php";
$courselist=DBcourse::selectall();
?>
<!DOCTYPE html>
<html lang=en>
<head>
  <script async src="https://www.googletagmanager.com/gtag/js?id=G-1KGMDNWLTK"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-1KGMDNWLTK');
</script>
<title>Dharwadhubballitutor,the Best Computer Courses Training Institute in Dharwad</title>
<link rel=icon href=media/img/favicon.png type=image/png sizes=96x96 />
<meta charset=utf-8 />
<meta name=title content=DharwadHubballiTutor />
<meta name=description content="DharwadHubballiTutor is one of the best computer training institute, We have our expertise's on Full stack web design and development training, Digital Media Marketing training, C Programming Training, C++ Programming Training, Python Programming Training, Computer Basic Training, Advanced Excel Training and lot of other computer course trainings . We also provide internships on real time projects for the students who complete these computer training courses with us, which helps them in gaining the industry level experience and growing their knowledge in the cutting edge technologies." />
<meta name="keywords" content="best computer courses in dharwad,best computer courses to learn,best computer institute in dharwad,best computer institute name in dharwad,best computer training in dharwad,best computer training institute in dharwad,best computer courses for beginners,Training institute near me,coaching center in dharwad,computer training center,computer trainning basics,	web designing and development course,web design course,web development course,web designing training,web designing coaching,web develpoment coaching in dharwad,web development coaching near me,how to design website,web development training,	web designing and development services,	python programming course,python programming course in dharwad,Software development training institute,Computer basics training institute,Website designing and develpoment training institute,Best training institute in Dharwad,HTML,CSS,Java,Python,Digital Marketing training insitute,Revit,Autocad,Cloud Computing training institute,Android,Graphic designing,C C++ training courses,	digital marketing courses in dharwad,	android development course in dharwad,	android development advanced course,	cloud computing courses in dharwad,	cloud computing courses near me,	civil design software training near me,java training near me,java training institutes in hubli-dharwad" />
<meta name=viewport content="width=device-width,initial-scale=1.0" />
<link rel=stylesheet href=https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css integrity=sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2 crossorigin=anonymous />
<link rel=preconnect href=https://fonts.gstatic.com />
<link href="https://fonts.googleapis.com/css2?family=Be+Vietnam:wght@100&display=swap" rel=stylesheet />
<link rel=stylesheet href=css/dharwadhubballitutor.css />
<link rel=stylesheet href=https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css />
<link href="https://allfont.net/allfont.css?fonts=league-spartan" rel=stylesheet type=text/css />
<link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
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
<a class="social-icon fbicon" target=_blank  rel="noopener" href=https://www.facebook.com/DharwadhubballiTutor><i class="fab fa-facebook fa-lg fbicon fbheader"></i></a>
<a class="social-icon twittericon" target=_blank rel="noopener" href=https://twitter.com/DharwadTutor><i class="fab fa-twitter fa-lg twittericon twitterheader"></i></a>
<a class="social-icon instaicon" target=_blank rel="noopener" href=https://www.instagram.com/dharwadhubballitutor><i class="fab fa-instagram fa-lg instaicon instaheader"></i></a>
<a class="social-icon instaicon" target=_blank rel="noopener" href=http://www.linkedin.com/in/dharwadhubballitutor><i class="fab fa-linkedin fa-lg linkedinicon linkedinheader"></i></a>
<a class="social-icon whatsappicon" target="_blank" rel="noopener" href="https://api.whatsapp.com/send?phone=919741237334&amp;text=Hi there! I have a question :)"><i class="fab fa-whatsapp fa-lg whatsappicon whatsappheader"></i></a>
</div>
<div class=col-md-6 >
<div class=semicircle>
<a class="blink_me social-icon" href=Job-Assistance.php> Job Assistance</a><br/>

</div>
<div class="container">
  <a href="Job-Assistance.php" class="mobileshow btn-btn-outline-warning" role="button">Job Assistance</a></div>
</div><br/>
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
<div id=carouselExampleCaptions class="carousel slide container-fluid" data-ride=carousel>
<ol class=carousel-indicators>
<li data-target=#carouselExampleCaptions data-slide-to=0 class=active></li>
<li data-target=#carouselExampleCaptions data-slide-to=1></li>
<li data-target=#carouselExampleCaptions data-slide-to=2></li>
<li data-target=#carouselExampleCaptions data-slide-to=3></li>
</ol>
<div class=carousel-inner>
  <div class="d-flex justify-content-center">
    
</div>
<div class="carousel-item active">
<picture>
<source srcset=media/img/mobileslide0.jpg media="(max-width: 768px)"  width="768" height="400"/>
<img src=media/img/slide0.jpg alt=Learning-is-earning-image class="d-block img-fluid"  width="1920" height="720"/>
</picture>
<div class="carousel-caption d-none d-md-block">
<h5>Welcome to Dharwadhubballitutor</h5>
<p>Determination is a key to SUCCESS</p>
</div>
</div>
<div class=carousel-item>
<picture>
<source srcset=media/img/mobileslide1.jpg media="(max-width: 768px)" width="768" height="400" />
<img src=media/img/slide1.jpg alt=Registeration-image class="d-block img-fluid" width="1920" height="720" />
</picture>
<div class="carousel-caption d-none d-md-block">
<button type=button class="btn btn-outline-primary btn-lg" data-toggle=modal data-target=#demomodal >Register For Demo Classes</button>
<br />
<p class=themecolor>Discover your potenial through our wide range of courses and get trained by the best trainers with Industry experience</p>
</div>
</div>
<div class=carousel-item>
<picture>
<source srcset=media/img/mobileslide2.jpg media="(max-width: 768px)" width="768" height="400" />
<img src=media/img/slide2.jpg alt=Top-skills-image class="d-block img-fluid" width="1920" height="720" />
</picture>
<div class="carousel-caption d-none d-md-block"></div>
</div>
<div class=carousel-item>
<picture>
<source srcset=media/img/mobileslide3.jpg media="(max-width: 768px)" width="768" height="400" />
<img src=media/img/slide3.jpg alt=Takeaways-from-learning-image class="d-block img-fluid" width="1920" height="720" />
</picture>
<div class="carousel-caption d-none d-md-block"></div>
</div>
</div>
<a class=carousel-control-prev href=#carouselExampleCaptions role=button data-slide=prev>
<span class=carousel-control-prev-icon aria-hidden=true></span>
<span class=sr-only>Previous</span>
</a>
<a class=carousel-control-next href=#carouselExampleCaptions role=button data-slide=next>
<span class=carousel-control-next-icon aria-hidden=true></span>
<span class=sr-only>Next</span>
</a>
</div>
<div class="col-md-12 justify-content-center align-self-center p-4 container-fluid">
<h2 class="text-center w-100" style=color:#f8c000>Trending Courses</h2>
</div>
<div class="container-fluid row row-cols-1 row-cols-md-2 row-cols-lg-4 justify-content-center align-self-center" >
<div class="col mb-4">
<div class=card >
<div class=card>
<div class=card-img-wrapper>
<img src=media/img/WDimg.jpg class="img-responsive slider-img img-thumbnail" alt="WEB DESIGN AND DEVELOPMENT IMAGE" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>Web Design and Development</h4><br/>
<p class=card-text>Web design and development course/training is full stack course, where you will learn both front end and back end coding...</p>
<a href=Web-Designing-and-Development-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
<div class="col mb-4">
<div class=card>
<div class="card h-100">
<div class=card-img-wrapper>
<img src=media/img/Pythonimg.jpg class="img-responsive slider-img img-thumbnail" alt="Python Programming Image" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>Python Programming</h4><br/>
<p class=card-text>Whether you are an experienced programmer or not, this course is intended for everyone who wishes to learn the Python programming.</p>
<a href=Python-Programming-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
<div class="col mb-4">
<div class=card>
<div class="card h-100">
<div class=card-img-wrapper>
<img src=media/img/cloudimg.jpg class="img-responsive slider-img img-thumbnail" alt="Cloud Computing Image" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>Cloud Computing</h4>
<br>
<p class=card-text>Our Cloud Computing Course will equip you to master significant concepts of Cloud computing and implement its various services..</p>
<a href=Cloud-Computing-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
<div class="col mb-4">
<div class=card>
<div class="card h-100">
<div class=card-img-wrapper>
<img src=media/img/androidimg.jpg class="img-responsive slider-img img-thumbnail" alt="Android Development Image" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>Android Development</h4><br/>
<p class=card-text>On the off chance that the app Development field is something you are thinking about as a career,then...</p>
<a href=Python-Programming-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
<div class="col mb-4">
<div class=card>
<div class="card h-100">
<div class=card-img-wrapper>
<img src=media/img/civilimg.jpg class="img-responsive slider-img img-thumbnail" alt="Civil Softwares Image" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>Civil Design Software</h4><br/>
<p class=card-text>Get the best training on Softwares like Revit,Autocad,3Dmax,Sketchup and V-ray and kick-start your career in Civil Engineering.</p>
<a href=Civil-Design-Softwares-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
<div class="col mb-4">
<div class=card>
<div class="card h-100">
<div class=card-img-wrapper>
<img src=media/img/programimg.jpg class="img-responsive slider-img img-thumbnail" alt="Programming Languages Image" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>Programming Languages</h4><br/>
<p class=card-text>Get familiar with the basics of computational reasoning, an important skill in present data-driven world using the Programming Languages...</p>
<a href=Programming-Languages-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
<div class="col mb-4">
<div class=card>
<div class="card h-100">
<div class=card-img-wrapper>
<img src=media/img/digitalimg.jpg class="img-responsive slider-img img-thumbnail" alt="Digital Marketing Image" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>Digital Marketing</h4><br/>
<p class=card-text>What we market might not have changed but how we market has changed. The evolving discipline of digital marketing offers opportunities...</p>
<a href=Digital-Marketing-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
<div class="col mb-4">
<div class=card>
<div class="card h-100">
<div class=card-img-wrapper>
<img src=media/img/schoolimg.jpg class="img-responsive slider-img img-thumbnail" alt="School Academics Image" height=100 width=500 />
</div>
<div class=card-body>
<h4 class=card-title style=color:#2a0a5e>School Academics</h4>

<p class=card-text>Our tutors excel in offering Mathematics and Science coaching for 8th,9th and 10th(STATE,CBSE & ICSE) Students.</p>
<a href=School-Academics-Training.php class="btn btn-outline-warning" role=button>View More</a>
</div>
</div>
</div>
</div>
</div>
<br />
<div class=container-fluid>
<div class=row>
<div class=col-md-4>
<img src=media/img/Internship1.jpg class=img-fluid alt="Internship image" width="400" height="300"/>
</div>
<br />
<div class="col-md-8 justify-content-center align-self-center">
<h3 class="h3 blink_me1"><a href=Internship.php class>FREE INTERNSHIPS ON LIVE PROJECT AVAILABLE</a></h3>
<p class="p2 para">Internships are a perfect way to gain valuable job experience for college students, recent graduates or anyone contemplating a career change.Here at DharwadHubballiTutor you will be working on live projects under well educated trainer. Below are some benefits of doing Internship at DharwadHubballiTutor</p>
<div class=row>
<div class=col-md-6>
<ul>
<li>Gain valuable work Experience</li>
<li>Explore a Career path</li>
<li>Give yourself an edge in the job market</li>
<li>Develop & Refine skills</li>
<li>Gain confidence</li>
</ul>
</div>
<div class=col-md-6>
<div class=text-center>
<button type=button class="btn btn-warning" data-toggle=modal data-target=#modal1>ENROLL NOW</button>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="modal fade" id=modal1 tabindex=-1 role=dialog aria-hidden=true>
<div class="modal-dialog modal-dialog-centered" role=document>
<div class=modal-content>
<div class=modal-header>
  <h3 style=color:#2a0a5e>Enroll Now</h3>
<button type=button class=close data-dismiss=modal aria-label=Close>
<span aria-hidden=true>&times;</span>
</button>
</div>
<div class=modal-body>
<form class=modal-content action="" method=POST>
<div class=container>

<label class=label for=name1><b>Name</b></label>
<input type=text name=name1 class=form-control id=name1 placeholder=Name required />
<label class=label for=email1><b>Email</b></label>
<input type=email name=email1 class=form-control id=email1 placeholder=name@example.com />
<label class=label for=phone1><b>Enter your number:</b></label>
<input type=tel name=phone1 class=form-control id=phone1 placeholder=Number required />
<label class=label for=qualification1><b>Your Qualification:</b></label>
<input type=text name=qualification1 class=form-control id=qualification1 placeholder=Qualification required />
<label class=label for=internship1><b>Internships</b></label>
<select class=custom-select id=internship1 name=internship1>
<option value="SELECT YOUR INTEREST">Select your Interest</option>
<option value="Web Designing and Development">Web Designing and Development</option>
<option value="Python Programming">Python Programming</option>
<option value="Digital Marketing">Digital Marketing</option>
<option value="Android Development">Android Development</option>
</select>
<br />
<div class=modal-footer>
<button type=button class="btn btn-warning" data-dismiss=modal>Close</button>
<button type=submit class="btn btn-warning" name="internshipsubmit">Submit</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
<div class="modal fade" id=exampleModalCenter tabindex=-1 role=dialog aria-hidden=true>
<div class="modal-dialog modal-dialog-centered" role=document>
<div class=modal-content>
<div class=modal-header>
  <h2 style="color: #2a0a5e">Register</h2>
<button type=button class=close data-dismiss=modal aria-label=Close>
<span aria-hidden=true>&times;</span>
</button>
</div>
<div class=modal-body>
<form class=modal-content action=action-page.php method=POST>
<div class=container>

<label class=label for=name><b>Name</b></label>
<input type=text name=name class=form-control id=name placeholder=Name required />
<label class=label for=email><b>Email</b></label>
<input type=email name=email class=form-control id=email placeholder=name@example.com />
<label class=label for=phone><b>Enter your number:</b></label>
<input type=tel name=phone class=form-control id=phone placeholder=Number required />
<label class=label for=trainings><b>Trainings</b></label>
<select class=custom-select id=trainings name=trainings >
<option value="SELECT YOUR INTEREST">Select your Interest</option>

<?php


foreach($courselist as $course) {
    echo "<option value='".$course->get_cname()."'>".$course->get_cname()."</option>";
}
 ?>
 </select><br />
<div class=modal-footer>
<button type=button class="btn btn-warning" data-dismiss=modal>Close</button>
<button type=submit class="btn btn-warning" name="regformsubmit">Submit</button>
</div>
</div>
</form>
</div>
</div>
</div>
</div>
<br />
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
<li>
  <a class=footer-a href=Basics-of-Computer-Training.php>Basics of Computer</a>
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
  <a class=footer-a href=Services.php>Services</a>
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
<a class="social-icon whatsappicon" target="_blank" rel="noopener" href="https://api.whatsapp.com/send?phone=919741237334&amp;text=Hithere!Ihaveaquestion"><i class="fab fa-whatsapp fa-2x whatsappicon"></i></a>
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
  <form class=modal-content action="" method=POST>
  <div class=container>
  <label class=label for=name2><b>Name</b></label>
  <input type=text name=name2 class=form-control id=name2 placeholder=Name required />
  <label class=label for=email2><b>Email</b></label>
  <input type=email name=email2 class=form-control id=email2 placeholder=name@example.com />
  <label class=label for=phone2><b>Enter your number:</b></label>
  <input type=tel name=phone2 class=form-control id=phone2 placeholder=Number required />
  <label class=label for=trainings2><b>Trainings</b></label>
  <select class=custom-select id=trainings2 name=trainings2>
  <option value="">Select your Interest</option>

  
 <?php


foreach($courselist as $course) {
    echo "<option value='".$course->get_cname()."'>".$course->get_cname()."</option>";
}
 ?>
 </select><br />
  <label class=label for=internship2><b>Internships</b></label>
  <select class=custom-select id=internship2 name=internship2>
  <option value=" ">Select your Interest</option>
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
<div class="modal fade" id="demomodal" tabindex="-1" role="dialog" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
     <div class="modal-content">
        <div class="modal-header">
          <h3 style="color:#2a0a5e">Register for Demo Class</h3>
         <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="text-align: right;">
           <span aria-hidden="true">&times;</span>
         </button>
        </div>
        <div class="modal-body">
           <form class="modal-content" action="" method="POST">
              <div class="container">
                 <label class="label" for="name4"><b>Name</b></label>
                <input type="text" name="name4" class="form-control" id="name4" placeholder="Name" required />
                <label class="label" for="email4"><b>Email</b></label>
                <input type="email" name="email4" class="form-control" id="email4" placeholder="name@example.com" />
                <label class="label" for="phone4"><b>Enter your number:</b></label>
                <input type="tel" name="phone4" class="form-control" id="phone4" placeholder="Number" required />
                <label class="label" for="demo"><b>Demo Class For </b></label>
                <select class="custom-select" id="demo" name="demo">
                  <option value="">SELECT YOUR INTEREST</option>
<?php
foreach($courselist as $course) {
    echo "<option value='".$course->get_cname()."'>".$course->get_cname()."</option>";
}
 ?>
 </select><br />
                    <div class="modal-footer">
                      <button type=button class="btn btn-warning" data-dismiss=modal>Close</button>
                      <button type=submit class="btn btn-warning" name="demosubmit">Submit</button>
                    </div>
                 </div>
                </form>
              </div>
            </div>
          </div>
        </div>
        <script src=https://code.jquery.com/jquery-3.5.1.slim.min.js integrity=sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj crossorigin=anonymous></script>
<script src=https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js integrity=sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx crossorigin=anonymous></script>

<script>
setTimeout(function() {
  $('#myModal').modal();
}, 30000);
</script>
<script>
$(document).ready(function(){$('[data-toggle="tooltip"]').tooltip()});
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
    }elseif(isset($_POST['internshipsubmit']))
    {
      $reg=new Registration();
      $reg->set_name(Sanitization::test_input($_POST["name1"]));
      $reg->set_email(Sanitization::test_input($_POST["email1"]));
      $reg->set_phone(Sanitization::test_input($_POST["phone1"]));
      echo $_POST["qualification1"];
      $reg->set_qualification(Sanitization::test_input($_POST["qualification1"]));
      $reg->set_internship(Sanitization::test_input($_POST["internship1"]));
      DBregistration::insert($reg); 
      echo "<meta http-equiv='refresh' content='0'>";
    }elseif(isset($_POST['demosubmit']))
    {
      $reg=new Registration();
      $reg->set_name(Sanitization::test_input($_POST["name4"]));
      $reg->set_email(Sanitization::test_input($_POST["email4"]));
      $reg->set_phone(Sanitization::test_input($_POST["phone4"]));
      $reg->set_demo(Sanitization::test_input($_POST["demo"]));
      DBregistration::insert($reg); 
      echo "<meta http-equiv='refresh' content='0'>";
    }
    else{
      echo "no results found";
    }
  }
  