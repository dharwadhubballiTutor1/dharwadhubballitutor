<?php
require "../../Admin/session.php";
require "../../Admin/Utilities/Helper.php";
include "../../Admin/DB Operations/followupOps.php";
require "../../Model/Registration.php";
require_once "header.php";
$id = $_GET["id"];
?>
<div class="card">
    <div class="card-header">
        <h6 >Follow Up's</h6>
    </div>
    <div class=card-body>
        <form method="post" id="followup_form" action="../Controller/newfollowup.php">
            <table class="table table-bordered" id="followuptable" width="100%" cellspacing="0">
                <thead>
                    <tr>
                        <th>Follwed By</th>
                        <th>Comments</th>
                        <th>Date</th>
                    </tr>
                </thead>
                <?php
                $followUpList = DBfollow::getFollowUpByEnqId($id);
                foreach ($followUpList as $follow) {
                    echo "<tr><td> "  . $follow->get_followupBy() . "</td><td>" . $follow->get_followcomment() . "</td><td>" . $follow->get_followupOn() . '</td></tr>';
                }
                ?>
            </table>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-12">
                        <fieldset>
                            <legend>Comments:</legend>
                            <div class="form-floating">
                                <textarea class="form-control" placeholder="Leave a comment here" id="followcomment" style="height: 100px" data-parsley-pattern="/^[a-zA-Z\s]+$/" data-parsley-trigger="keyup" name="followcomment"></textarea>
                                <label for="followcomment">Comments</label>
                            </div>
                            <input type="hidden" name="followenqid" id="followenqid" value="<?php echo $id; ?>">
                            <fieldset>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <div class="row">
                    <div class="col-md-8">
                        <input type="hidden" name="followupBy" id="followupBy" class="form-control" required data-parsley-type="integer" data-parsley-minlength="10" data-parsley-maxlength="12" data-parsley-trigger="keyup" value=<?php echo $_SESSION['login_user']; ?> />
                    </div>
                </div>
            </div>
    </div>
    <div class="card-footer">
        <button type="submit" class="btn btn-warning">FollowUp</button>
    </div>
</div>

</form>
</div>
</div>
</div>
</div>
</body>

</html>