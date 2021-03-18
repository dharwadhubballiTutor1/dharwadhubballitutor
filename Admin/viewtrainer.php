<?php
require "session.php";
include "../Admin/navbar.php";
include "../Admin/DB Operations/TrainerOps.php";
include "../Admin/Model/Trainermodel.php";
?>
<html>
    <head>
        <title>Trainer Profile</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <link rel=stylesheet href="../Admin/css/dharwadhubballitutoradmin.css " />
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-10">
                    <div class="container">
                        <h2 class="h2">Trainer Details </h2>
                        <?php   
        $id=$_GET['id'];
        $trainer= DBtrainer::viewtrainer($id);
        ?>
                        <br />
                        <div class="row gutters-sm" >
                            <div class="col-md-3 mb-3">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="d-flex flex-column align-items-center text-center">
                                            <img src="<?php echo 'uploads/', $trainer->get_photofile(); ?>"
                                                alt="Admin" class="rounded-circle" width="100" height="100">
                                            <div class="mt-3">
                                                <?php echo $trainer->get_name();?>
                                            </div>
                                            <div>
                                          
                                            
                                            <?php
                                              if(count($trainer->get_coursesassigned()) == 0){
                                                echo "No courses Mapped";
                                              }
                                              foreach($trainer->get_coursesassigned() as $coursesname){
                                                    echo "<span class='badge rounded-pill bg-warning text-dark'>".$coursesname."</span>";
                                              }
                                            ?>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <br />
                                <div class="form-check text-center">
                                    <input type="radio" class="btn-check" name="options" id="option2">
                                    <label class="btn btn-danger" for="option2">Edit</label>

                                </div>
                            </div>

                            <div class="col-md-8">
                                <form class="form" action="update.php" method="POST" id="myForm"
                                    enctype="multipart/form-data">
                                    <div class="row g-3">
                                        <div class="col-md-6">
                                            <label for="name" class="col-md-6 control-label">Full Name</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="name" placeholder="Full Name" name="name"
                                                    class="form-control" pattern="[a-zA-Z\-\ ]+" value="<?php
                         echo $trainer->get_name();
                         ?>">
                                                <input type="hidden" id="id" name="id"
                                                    value="<?php echo $trainer->get_id(); ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="phone" class="col-md-6 control-label">Phone</label>
                                            <div class="col-sm-12">
                                                <input type="tel" id="phone" placeholder="Phone" name="phone"
                                                    class="form-control" value="<?php
                         echo $trainer->get_phone();
                         ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="email" class="col-md-6 control-label">Email</label>
                                            <div class="col-sm-12">
                                                <input type="email" id="email" placeholder="Email" name="email"
                                                    class="form-control"
                                                    pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" value="<?php
                         echo $trainer->get_email();
                         ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="qualification"
                                                class="col-md-6 control-label">Qualification</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="qualification" name="qualification"
                                                    placeholder="Your Qualification" class="form-control"
                                                    pattern="[A-Za-z]+" required value="<?php
                         echo $trainer->get_qualification();
                         ?>">
                                            </div>
                                        </div>
                                        <br />

                                       

                                       
                                       
                                        <div class="col-md-6">
                                            <label for="address" class="col-md-6 control-label">Address</label>
                                            <div class="col-sm-12">
                                                <input type="address" id="address" name="address"
                                                    placeholder="Residential Address" class="form-control" required
                                                    value="<?php
                         echo $trainer->get_address();
                         ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="adhaarno" class="col-md-6 control-label">Adhaar Number</label>
                                            <div class="col-sm-12">
                                                <input type="text" id="adhaarno" name="adhaarno"
                                                    placeholder="Your Adhaar Number" class="form-control"
                                                    pattern="[0-9]{4}[0-9]{4}[0-9]{4}" required value="<?php
                         echo $trainer->get_adhaarno();
                         ?>">
                                            </div>
                                        </div>
                                        <br />

                                        <div class="col-md-6">
                                            <label for="adhaarfile" class=" col-md-6 form-label">Adhaar File</label>
                                            <div class="col-sm-12">
                                                <a href="<?php echo 'uploads/', $trainer->get_adhaarfile(); ?>"
                                                    class="form-control" download> Click here to download Adhaar
                                                    file</a>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="adhaarfile" class=" col-md-6 form-label">Resume</label>
                                            <div class="col-sm-12">
                                                <a href="uploads/" $.adhaarfile class="form-control"> Click here to
                                                    download Resume</a>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="adhaarfile" class=" col-md-6 form-label">Upload Adhaar</label>
                                            <div class="col-sm-12">

                                                <input type="file" name="adhaarfile" id="adhaarfile"
                                                    class="form-control">

                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="resume" class=" col-md-6 form-label">Upload Resume</label>
                                            <div class="col-sm-12">

                                                <input type="file" name="resume" id="resume" class="form-control">

                                            </div>
                                        </div>
                                        <button class="btn btn-success" type="submit" name="submit">Update</button>
                                        <br />
                                    </div>
                                </form>
                                </br>
                            </div>
                        </div>
                    </div>
                </div>
                <script>
                $(document).ready(function() {
                    $("#myForm :input").prop("disabled", true);
                    $('input[type=radio][name=options]').click(function() {
                        $('#myForm :input').prop('disabled', false);
                    });
                });
                </script>
    </body>


</html>