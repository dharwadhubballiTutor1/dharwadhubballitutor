<?php require_once("navigation.php"); ?>

<div class="hero-wrap" style="background-image:url(/dharwadhubballitutor/blogadmin/img/bg_1.jpg.webp);background-size:cover;width:100%;">
</div>
<div class="row">
    <div class="slideUp">

        <span class="slidespan"> Welcome to DharwadHubballiTutor</span>
        <h1 class="slideh1">Learning Helps Earning</h1>
        <p class="slidep">Determination is a key to SUCCESS</p>
    </div>
</div>

<div class="slideUpbtn">
    <button type=button class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#demomodal">Demo Classes</button>
    <button type=button class="btn btn-primary" data-bs-toggle=modal data-bs-target=#modal2>Training and Internship</button>
</div>


<section class="margintop-small">
    <div class="row">
        <div class="col-md-5">
            <img src="/dharwadhubballitutor/blogadmin/img/about.jpg.webp" style="width:100%; height:100%; object-fit:contain;" alt="Student with laptop">
        </div>
        <div class="col-md-4 slideUpText">
            <article>
                <header>
                    <h6 class="display-6">About us</h6>
                </header>
                <p>
                    <?php
                    $string = $business->getBusinessAboutBusiness();
                    if (strlen($string) > 500) {

                        // truncate string
                        $stringCut = substr($string, 0, 500);
                        $endPoint = strrpos($stringCut, ' ');

                        //if the string doesn't contain any space then it will cut without word basis.
                        $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                        $string .= '...';
                    }
                    echo $string;
                    ?>
                </p>
            </article>
            <br />
            <a class="btn btn-info btn-sm" href="/dharwadhubballitutor/about/">Read More</a>
        </div>
    </div>
</section>
<br />

<section class="ftco-section-counter img" style="background-image:url(blogadmin/img/bg_3.jpg);background-size:cover;width:100%;">
    <!--       <div class=" counter-container">-->
    <!--            <div class="counter">-->
    <!--  <i class="fa fa-users fa-5x icon"></i>-->
    <!--  <h3 data-target="15000" class="count">0</h3>-->
    <!--  <h6>Enrolled Students</h6>-->
    <!--</div>-->
    <!--<div class="counter">-->
    <!--  <img src="https://raw.githubusercontent.com/nemo0/animated-counter/29e12c0cb15e90c27faaef0d83fb2618126067db/icons/iconmonstr-coffee-11.svg" alt="Coffee" srcset="" class="icon">-->
    <!--  <h3 data-target="1200" class="count">0</h3>-->
    <!--  <h6>Cups of Coffee</h6>-->
    <!--</div>-->
    <!--<div class="counter">-->
    <!--  <img src="https://raw.githubusercontent.com/nemo0/animated-counter/29e12c0cb15e90c27faaef0d83fb2618126067db/icons/iconmonstr-weather-112.svg" alt="night" srcset="" class="icon">-->
    <!--  <h3 data-target="500" class="count">0</h3>-->
    <!--  <h6>Sleepless Nights</h6>-->
    <!--</div>-->
    <!--      </div> -->
</section>
<br>

<section class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center">

                <h2 class="heading">Explore Our Popular Courses</h2>
            </div>
        </div>
    </div>
</section>
<br>

<section class="container-fluid">
    <div class="container">
        <div class="row">

            <?php
            $postOnHomeList = DBpost::getPostOnHome();
            foreach ($postOnHomeList as $postOnHome) {
                echo '<div class="col-md-4">
            <div class="card">
                <div id="main">
                    <img src="/dharwadhubballitutor/blogadmin/img/Post/' . $postOnHome->getImage() .
                    '" class="card-img-top" alt="' . $postOnHome->getAltTextImage() . '" width="100%" height="100%">
                </div>
                    <div class="card-body">
                        <div class="text-center">
                            <p class="card-text">
                            <h2>' . $postOnHome->getPostTitle() . '</h2>';

                $string = strip_tags($postOnHome->getPostDescription());
                if (strlen($string) > 500) {

                    // truncate string
                    $stringCut = substr($string, 0, 200);
                    $endPoint = strrpos($stringCut, ' ');

                    //if the string doesn't contain any space then it will cut without word basis.
                    $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                    $string .= '...';
                }
                echo $string;
                echo '</p>
                            <a class="btn btn-info btn-sm" href="';
                echo $postOnHome->getPostUrl();
                echo '">Read More</a>
               
                        </div>
                    </div>
            </div>
           </div>';
            }
            ?>
        </div>
    </div>
</section>
</br>

<section class="container-fluid">
    <div class="row">
        <div class="col-md-12">
            <div class="text-center">

                <h2 class="heading">Testimonials</h2>
            </div>
        </div>
    </div>
</section>
<br>
<section class="ftco-section ftco-no-pt ftco-no-pb testimony-section img">
        <div class="overlay"></div>
        <div class="container">
            <div class="row ftco-animate justify-content-center">
                <div class="col-md-6 p-4 pl-md-0 py-md-5 pr-md-5 aside-stretch d-flex align-items-center">
                    <div class="heading-section heading-section-white">
                        <span class="subheading" style="color:#fff;">Read Testimonials</span>
                        <h2 class="mb-4">It's always a joy to hear that the work we do has positively reviews</h2>
                    </div>
                </div>
                <div class="col-md-6 pl-md-5 py-4 py-md-5 aside-stretch-right">
                    <div class="carousel-testimony owl-carousel ftco-owl">
                        <?php $testimonialsList = DBtestimonials::getTestimonialsList();
            foreach ($testimonialsList as $testimonials) {
                 
                $card ='<div class="item">
                            <div class="testimony-wrap py-4 pb-5 d-flex justify-content-between align-items-end">
                                <div class="user-img" style="background-image: url(/dharwadhubballitutor/blogadmin/img/Post/' . $testimonials->getImage() . ')">
                                    <span class="quote d-flex align-items-center justify-content-center">
										<i class="fa fa-quote-left"></i>
									</span>
                                </div>
                                <div class="text">
                                        <p class="mb-4">';
                                        $string = strip_tags($testimonials->getDescription());
                                        if (strlen($string) > 500) {
                                            // truncate string
                                            $stringCut = substr($string, 0, 200);
                                            $endPoint = strrpos($stringCut, ' ');
                        
                                            //if the string doesn't contain any space then it will cut without word basis.
                                            $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                                            $string .= '...';
                                        }
                                        $card .= '<p>' . $string . '</p><br>' . '<br>';
                        
                                        for ($i = 1; $i <= 5; $i++) {
                                            if ($testimonials->getRateNow() >= $i) {
                                                $card .= '<i class="fa fa-star p-1 fa-lg" aria-hidden="true" id="st' . $i . '" style="color:#1eb2a6"></i>';
                                            } else {
                                                $card .= '<i class="fa fa-star p-1 fa-lg" aria-hidden="true" id="st' . $i . '"></i>';
                                            }
                                        }
                                        $card.='</p><p class="name">'. $testimonials->getName().'</p>
                                </div>
                            </div>
                        </div>';
                echo $card;
            }
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </section>

<section class="container-fluid">
    <div class="container">
        <div class="row">

            <?php
            echo '<div class="row  g-1">';
            $testimonialsList = DBtestimonials::getTestimonialsList();
            foreach ($testimonialsList as $testimonials) {

                $card =  '<div class=col>
                        <div class="card mb-3 card-shadow " style="max-width: 540px;">
                                    <div class="d-flex align-items-center">
                                        <div class="row g-0">
                                            <img src="/dharwadhubballitutor/blogadmin/img/Post/' . $testimonials->getImage() . '" class="img-fluid rounded-start" width="100%" height="100%" alt="Student Testimonial Image ">
                                    </div>                              
                                    <div class="card-body"> <br />
                                    <h5 class="card-title">' . $testimonials->getName() . '</h5>';
                $string = strip_tags($testimonials->getDescription());
                if (strlen($string) > 500) {
                    // truncate string
                    $stringCut = substr($string, 0, 200);
                    $endPoint = strrpos($stringCut, ' ');

                    //if the string doesn't contain any space then it will cut without word basis.
                    $string = $endPoint ? substr($stringCut, 0, $endPoint) : substr($stringCut, 0);
                    $string .= '...';
                }
                $card .= '<p>' . $string . '</p><br>' . '<br>';

                for ($i = 1; $i <= 5; $i++) {
                    if ($testimonials->getRateNow() >= $i) {
                        $card .= '<i class="fa fa-star p-1 fa-lg" aria-hidden="true" id="st' . $i . '" style="color:#1eb2a6"></i>';
                    } else {
                        $card .= '<i class="fa fa-star p-1 fa-lg" aria-hidden="true" id="st' . $i . '"></i>';
                    }
                }
                $card .= '</div>                             
                        </div></div></div>';
                echo $card;
            }
            echo '</div>';
            ?>
        </div>
    </div>
</section>


<div class="modal fade" id="demomodal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 style="color:#2a0a5e">Register for Demo Class</h3>
                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close" style="text-align: right;">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form class="modal-content" action="../Admin/Controller/newenquiry.php" method="POST" autocomplete="off">
                    <div class="container">
                        <label class="label" for="name2"><b>Name</b></label>
                        <input type="text" name="name2" class="form-control" id="name2" placeholder="Name" required />
                        <input type="hidden" name="front" class="form-control" id="demofront" value="front" />
                        <label class="label" for="email2"><b>Email</b></label>
                        <input type="email" name="email2" class="form-control" id="email2" placeholder="name@example.com" />
                        <label class="label" for="phone2"><b>Enter your number:</b></label>
                        <input type="tel" name="phone2" class="form-control" id="phone2" placeholder="Number" required />
                        <label class="label" for="demo2"><b>Demo Class For </b></label>
                        <select class="form-select" id="demo2" name="demo2" style="background-color:#f1f1f1">
                            <option value="">SELECT YOUR INTEREST</option>
                            <?php
                            $courselist = DBcourse::selectall();
                            foreach ($courselist as $course) {
                                echo "<option value='" . $course->get_cname() . "'>" . $course->get_cname() . "</option>";
                            }
                            ?>
                        </select>
                        <br />
                    </div>

            </div>
            <div class="modal-footer">
                <button type=button class="btn btn-warning" data-dismiss=modal>Close</button>
                <button type=submit class="btn btn-warning" name="demosubmit">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id=modal2 tabindex=-1 role=dialog aria-hidden=true>
    <div class="modal-dialog modal-dialog-centered" role=document>
        <div class=modal-content>
            <div class=modal-header>
                <h2 style=color:#2a0a5e>Training and Internship</h2>
                <button type=button class=close data-bs-dismiss=modal aria-label=Close>
                    <span aria-hidden=true>&times;</span>
                </button>
            </div>
            <div class=modal-body>
                <form class="modal-content" action="../Admin/Controller/newenquiry.php" method="POST" autocomplete="off">
                    <div class="container">
                        <label class=label for=name2><b>Name</b></label>
                        <input type="text" name="name2" class="form-control" id="name2" placeholder="Name" required />
                        <input type="hidden" name="front" class="form-control" id="front" value="front" />
                        <label class=label for=email2><b>Email</b></label>
                        <input type=email name=email2 class=form-control id=email2 placeholder=name@example.com />
                        <label class=label for=phone2><b>Enter your number:</b></label>
                        <input type=tel name=phone2 class=form-control id=phone2 placeholder=Number required />
                        <label class=label for=trainings2><b>Trainings</b></label>
                        <select class=form-select id=trainings2 name=trainings2 style="background-color:#f1f1f1">
                            <option value="">Select your Interest</option>
                            <?php
                            $courselist = DBcourse::selectall();
                            foreach ($courselist as $course) {
                                echo "<option value='" . $course->get_cname() . "'>" . $course->get_cname() . "</option>";
                            }
                            ?>
                        </select><br />
                        <label class=label for=internship2><b>Internships</b></label>
                        <select class=form-select id=internship2 name=internship2 style="background-color:#f1f1f1">
                            <option value=" ">Select your Interest</option>
                            <?php
                            $courselist = DBcourse::selectall();
                            foreach ($courselist as $course) {
                                echo "<option value='" . $course->get_cname() . "'>" . $course->get_cname() . "</option>";
                            }
                            ?>
                        </select>
                        <br />

                    </div>

            </div>
            <div class=modal-footer>
                <button type=button class="btn btn-warning" data-dismiss=modal>Close</button>
                <button type=submit class="btn btn-warning" name="footerformsubmit">Submit</button>
                </form>
            </div>
        </div>
    </div>
</div>
<?php require_once("footer.php"); ?>

<script>
    function saveUserData(userData) {
        debugger;
        $.post('http://www.dharwadhubballitutor.com/dharwadhubballitutor/views/userData.php', {
            oauth_provider: 'google',
            userData: JSON.stringify(userData)
        });
    }

    // Render Google Sign-in button
    function renderButton() {
        gapi.signin2.render('gSignIn', {
            'scope': 'profile email',
            'width': 200,
            'height': 40,
            'longtitle': true,
            'theme': 'dark',
            'onsuccess': onSuccess,
            'onfailure': onFailure
        });
    }

    // Sign-in success callback
    function onSuccess(googleUser) {
        // Get the Google profile data (basic)
        //var profile = googleUser.getBasicProfile();

        // Retrieve the Google account data
        gapi.client.load('oauth2', 'v2', function() {
            var request = gapi.client.oauth2.userinfo.get({
                'userId': 'me'
            });
            request.execute(function(resp) {
                // Display the user details
                var profileHTML = '<h3>Welcome ' + resp.given_name +
                    '! <a href="javascript:void(0);" onclick="signOut();">Sign out</a></h3>';
                profileHTML += '<img src="' + resp.picture + '"/><p><b>Google ID: </b>' + resp.id +
                    '</p><p><b>Name: </b>' + resp.name + '</p><p><b>Email: </b>' + resp.email +
                    '</p><p><b>Gender: </b>' + resp.gender + '</p><p><b>Locale: </b>' + resp.locale +
                    '</p><p>';
                document.getElementsByClassName("userContent")[0].innerHTML = profileHTML;

                document.getElementById("gSignIn").style.display = "none";
                document.getElementsByClassName("userContent")[0].style.display = "block";

                // Save user data
                saveUserData(resp);
            });
        });
    }

    // Sign-in failure callback
    function onFailure(error) {
        alert(error);
    }

    // Sign out the user
    function signOut() {
        var auth2 = gapi.auth2.getAuthInstance();
        auth2.signOut().then(function() {
            document.getElementsByClassName("userContent")[0].innerHTML = '';
            document.getElementsByClassName("userContent")[0].style.display = "none";
            document.getElementById("gSignIn").style.display = "block";
        });

        auth2.disconnect();

    }
</script>