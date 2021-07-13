<?php
require "../../Admin/session.php";

require "../../Admin/Utilities/Helper.php";
include "../../Admin/DB Operations/followupOps.php";

require "../../Model/Registration.php";


?>
<html>

    <head>
        <title> FollowUp</title>
    </head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css" />
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                <?php
                include "../../Admin/navbar.php";
                ?></div>
                <div class="col-md-9">
                <h2 class="display-2">Enquiry FollowUp</h2>
                    <?php 
  $id=$_GET["id"];                  
//   $followup= DBfollow::getAllEnqfollowup($id);
  ?>

<form method="post" id="followup_form" enctype="multipart/form-data" action="../Controller/newfollowup.php">
            <div class="modal-content">
                <div class="modal-body">
                    <table class="table table-bordered" id="followuptable" width="100%" cellspacing="0" >
                        <thead>
                            <tr>
                                <th >
                                  
                                        Follwed By
                                   
                                </th>
                                <th >
                                   
                                        Comments
                                 
                                </th>
                                <th >
                                 
                                        Date
                                 
                                </th>
                            </tr>
                        </thead>
                        <?php 
                        $followUpList=DBfollow::getFollowUpByEnqId($id);
                        foreach($followUpList as $follow) 
                                 {
                                     echo "<tr><td> "  . $follow->get_followupBy(). "</td><td>". $follow->get_followcomment(). "</td><td>" . $follow->get_followupOn().'</td></tr>' ;
                                 }
                        ?>
                    </table>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-12">
                                <fieldset>
                                    <legend>Comments:</legend>
                                    <div class="form-floating">
                                        <textarea class="form-control" placeholder="Leave a comment here"
                                            id="followcomment" style="height: 100px"
                                            data-parsley-pattern="/^[a-zA-Z\s]+$/" data-parsley-trigger="keyup"
                                            name="followcomment"></textarea>
                                        <label for="followcomment">Comments</label>
                                    </div>
                                    <input type="hidden" name="followenqid" id="followenqid" value="<?php echo $id ;?>">
                                    <fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-8">
                                <input type="hidden" name="followupBy" id="followupBy" class="form-control" required
                                    data-parsley-type="integer" data-parsley-minlength="10" data-parsley-maxlength="12"
                                    data-parsley-trigger="keyup" value=<?php echo $_SESSION['login_user']; ?> />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">FollowUp</button>
                </div>
                </div>
            </div>
        </form>
        