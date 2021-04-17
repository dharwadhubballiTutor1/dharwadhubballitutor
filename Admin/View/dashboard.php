<!doctype html>
<html lang="en">
<?php
    require "../session.php";
        
        include "../../DB Operations/dbconnection.php";
        $db=ConnectDb::getInstance();
        $query = "SELECT * FROM `coursebasedenq`";
        $courseBasedEnq = mysqli_query($db->getConnection(), $query);
        $query = "SELECT A.Admissions AS Admission, E.Enqueries AS Enqueries, E.MONTH AS MONTH FROM admissionsforlastq AS A JOIN enqueriesforlastq AS E ON A.MONTH=E.MONTH";
        $EnqAndAdmission = mysqli_query($db->getConnection(), $query);

        $result=mysqli_query($db->getConnection(),"SELECT count(*) as total from candidates");
        $totalenquiries=mysqli_fetch_assoc($result);

        $result=mysqli_query($db->getConnection(),"SELECT count(*) as total from admissions");
        $totalstudents=mysqli_fetch_assoc($result);

        $query=mysqli_query($db->getConnection(),"SELECT Sum(PaidFees) as total FROM feescollectionlastm");
        $paidfees=mysqli_fetch_assoc($query);

        $query=mysqli_query($db->getConnection(),"SELECT Sum(TotalFees) as total FROM feescollectionlastm");
        $totalfees=mysqli_fetch_assoc( $query);

        $sql = 'SELECT * FROM feescollectionlastm';
      $result = mysqli_query($db->getConnection(), $sql);

      $feescalculate= $paidfees['total'] / $totalfees['total'] * 100;
    ?>

<head>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <link rel=stylesheet href="../../Admin/css/dharwadhubballitutoradmin.css" />
    <title>Dashboard</title>
    <style>
    /* .mr-3, .mx-3 {
            margin-right: 1rem !important;
            margin-top: 0rem;
            border-radius: 50px;
        } */
    .widget-stat,
    .media {

        align-items: center;
        background-color: #2a0a5e;
        height: 100%
    }

    .usericon {
        color: #f8c000;
        display: table;
        margin: 0 auto;
    }

    .mb-1 {
        font-size: 16px;
    }

    .enquiries {
        font-family: Arial, Helvetica, sans-serif;
        border-collapse: collapse;
        width: 50%;
        text-align: center;
        background-color: #f8c000;
        margin-left: 5px !important;
        margin-right: auto !important;
    }

    .progress {
        width: 120px;
        height: 120px;
        background: none;
        position: relative;
        border-radius: 2px;
    }

    .progress::after {
        content: "";
        width: 100%;
        height: 100%;
        border-radius: 50%;
        border: 10px solid #eee;
        position: absolute;
        top: 0;
        left: 0;
    }

    .progress>span {
        width: 50%;
        height: 100%;
        overflow: hidden;
        position: absolute;
        top: 0;
        z-index: 1;
    }

    .progress .progress-left {
        left: 0;
    }

    .progress .progress-bar {
        width: 100%;
        height: 100%;
        background: none;
        border-width: 10px;
        border-style: solid;
        position: absolute;
        top: 0;
    }

    .progress .progress-left .progress-bar {
        left: 100%;
        border-top-right-radius: 80px;
        border-bottom-right-radius: 80px;
        border-left: 0;
        -webkit-transform-origin: center left;
        transform-origin: center left;
    }

    .progress .progress-right {
        right: 0;
    }

    .progress .progress-right .progress-bar {
        left: -100%;
        border-top-left-radius: 80px;
        border-bottom-left-radius: 80px;
        border-right: 0;
        -webkit-transform-origin: center right;
        transform-origin: center right;
    }

    .progress .progress-value {
        position: absolute;
        top: 0;
        left: 0;
    }

    .outerring {
        color: #f8c000;
    }
    </style>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
    // Load the Visualization API and the corechart package.
    google.charts.load('current', {
        'packages': ['corechart']
    });

    // Set a callback to run when the Google Visualization API is loaded.
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawadmissionsChart);
    // Callback that creates and populates a data table,
    // instantiates the pie chart, passes in the data and
    // draws it.
    function drawChart() {

        // Create the data table.
        var data = new google.visualization.arrayToDataTable([
            ['Trainings', 'NUMBER'],
            <?php
         while ($row = mysqli_fetch_array($courseBasedEnq)) {

          echo "['" . $row['Trainings'] . "'," . intval($row['NUMBER'] ). "],";
        }
         ?>
        ]);

        // Set chart options
        var options = {
            'title': 'Enqueries Based on Courses',
            'pieHole': 0.4,
            'width': 475,
            'height': 300
        };

        // Instantiate and draw our chart, passing in some options.
        var chart = new google.visualization.PieChart(document.getElementById('enquiries_div'));
        chart.draw(data, options);
    }

    function drawadmissionsChart() {
        var data = google.visualization.arrayToDataTable([
            ['MONTH', 'Enqueries', 'Admission'],
            <?php
         while ($row = mysqli_fetch_array($EnqAndAdmission)) {

          echo "['" . $row['MONTH'] . "'," . intval($row['Enqueries'] )."," . intval($row['Admission'] ). "],";
        }
         ?>
        ]);

        var options = {
            'title': 'Enqueries and Admission',
            'width': 475,
            'height': 300
        };
        var chart = new google.visualization.ColumnChart(document.getElementById('admissions_div'));
        chart.draw(data, options);

    }
    </script>
</head>

<body>
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <?php
            require "../../Admin/navbar.php";
            ?>
            </div>
            <div class="col-md-9">
                <br />
                <div class=row>
                    <div class="col-lg-4 col-md-4">
                        <div class="widget-stat card">
                            <div class="card-body">
                                <div class=" text-white">
                                    <i class="fas fa-users fa-4x usericon"></i><br />
                                    <h4>Total Enquiries</h4>
                                    <h2 class="text-white text-center font-weight-bold" style=font-size:50px>
                                        <?php
                                            echo $totalenquiries['total'];
                                        ?>
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4">
                        <div class="widget-stat card">
                            <div class="card-body">
                                <div class=" text-white">
                                    <i class="fas fa-graduation-cap usericon fa-4x"></i><br />
                                    <h4>Total Admissions</h4>
                                    <h2 class="text-white text-center font-weight-bold" style=font-size:50px>
                                        <?php
                                            echo $totalstudents['total'];
                                         ?>
                                    </h2>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4">
                        <div class="widget-stat card">
                            <div class="card-body">

                                <div class="progress mx-auto" data-value=<?php echo intval($feescalculate) ?>>
                                    <span class="progress-left">
                                        <span class="progress-bar outerring"></span>
                                    </span>
                                    <span class="progress-right">
                                        <span class="progress-bar outerring"></span>
                                    </span>
                                    <div
                                        class="progress-value w-100 h-100 rounded-circle d-flex align-items-center justify-content-center">
                                        <div class="font-weight-bold" style=font-size:35px;color:white>
                                            <?php echo intval($feescalculate)."%" ?></div>
                                    </div>
                                </div></br />

                                <h2 class="h4 font-weight-bold text-center mb-4" style=color:white>Fees Collection</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <br/><br/>
                <div class="row">
                    <div class="col-lg-6">
                        <div id="enquiries_div" ></div>
                    </div>
                    <div class="col-lg-6">
                        <div id="admissions_div" ></div>
                    </div>
                </div>
                <br/><br/>
                <div class="row">
                    <div class="col-lg-6">
                        <table class=enquiries id="enquery">
                            <thead>
                                <tr cellspacing="0">

                                    <th>Name</th>
                                    <th>TotalFees</th>
                                    <th>PaidFees</th>
                                </tr>
                            </thead>
                            <?php  
                                 echo  "<tbody>";
                                   if(mysqli_num_rows($result) > 0){
                                   while($row = mysqli_fetch_assoc($result)){
                                    echo "<tr><td>" . $row["Name"]. "</td><td>" . $row["TotalFees"]. "</td><td> " . $row["PaidFees"]. "</td></tr>"; 
                                   }
                               }
                               echo  "</tbody>";
                               ?>
                        </table>
                    </div>
                    <div class="col-lg-6"></div>
                </div>
            </div>

        </div>
    </div>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script>
    $(function() {
        $(".progress").each(function() {
            var value = $(this).attr("data-value")
            var left = $(this).find(".progress-left .progress-bar")
            var right = $(this).find(".progress-right .progress-bar")

            if (value > 0) {
                if (value <= 50) {
                    right.css("transform", "rotate(" + percentageToDegrees(value) + "deg)")
                } else {
                    right.css("transform", "rotate(180deg)")
                    left.css("transform", "rotate(" + percentageToDegrees(value - 50) + "deg)")
                }
            }
        })

        function percentageToDegrees(percentage) {
            return (percentage / 100) * 360
        }
    })
    </script>


    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous">
    </script>
</body>

</html>