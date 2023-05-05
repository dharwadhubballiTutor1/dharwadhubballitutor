<?php
require "../session.php";
require_once "../DB Operations/batchOps.php";
require_once "../../Admin/model/Batchmodel.php";
require_once "header.php"
?>
<div class="card">
    <div class="card-header">
        
        <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="pills-batch-tab" data-bs-toggle="pill" data-bs-target="#pills-batch" type="button" role="tab" aria-controls="pills-batch" aria-selected="true">BatchList</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link " id="pills-newadmit-tab" data-bs-toggle="pill" data-bs-target="#pills-newadmit" type="button" role="tab" aria-controls="pills-newadmit" aria-selected="false">New batch</button>
    
            </li>
        </ul>
    </div>
    <div class="card-body">
        <div class="tab-content" id="pills-tabContent">
            <div class="tab-pane fade show active" id="pills-enquiry" role="tabpanel" aria-labelledby="pills-batch-tab">
                <table class="table table-bordered table-responsive" id="batch1">
                    <thead>
                        <tr>
                            <th style="display:none">Id</th>
                            <th>Batch Name</th>
                            <th>Trainer Name</th>
                            <th>Start Date</th>
                            <th>End Date</th>
                            <th> Age Of Batch</th>
                        </tr>
                    </thead>
                    <?php
                    echo  "<tbody>";
                    $batchList = DBbatch::viewbatch();
                    foreach ($batchList as $batch) {
     echo "<tr><td style='display:none'> " . $batch->getbatchid() . "</td>
                                
     <td> " . $batch->getBatchname() .
                            "</td><td>" . $batch->getTrainername() .
                            "</td><td>" . $batch->getStartDate() .
                            "</td><td>" . $batch->getEndDate() .
                            "<td></td>" .$batch->getAgeofbatch().
                            "</td><td>
                                        <a class='btn btn-warning' href='moveadmission.php?id=" . $batch->getBatchDate() . "&BatchDate="  .  " role='button' type='submit' >Update </a>
                                        </td></tr>";
                    }
                    echo  "</tbody>";

                    ?>
                </table>
            </div>
            <div class="tab-pane fade " id="pills-newadmit" role="tabpanel" aria-labelledby="pills-newadmit-tab">
               
    </div>
</div>
<?php require_once("footer.php")
?>
<script>
    $(document).ready(function() {
        var table = $('#enquery').DataTable({
            "order": [0, 'desc']
        });
        
        $("#dateofbirth").focus(function() {
            let thisYear = new Date();
            thisYear = thisYear.getFullYear();
            let allowedYear = thisYear - 5;
            allowedYear = allowedYear.toString();
            let year = new Date(allowedYear);
            let dd = String(year.getDate()).padStart(2, '0');
            let mm = String(year.getMonth() + 1).padStart(2, '0'); //January is 0!
            let yyyy = year.getFullYear();
            year = yyyy + '-' + mm + '-' + dd;
            $("#dateofbirth").attr("max", year);
        })
    });
</script>