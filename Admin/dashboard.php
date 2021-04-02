<!doctype html>
<html lang="en">
    <?php
    require "../Admin/navbar.php";
        include "../DB Operations/dbconnection.php";
        $db=ConnectDb::getInstance();
        $query = "SELECT * FROM `coursebasedenq`";
        $courseBasedEnq = mysqli_query($db->getConnection(), $query);
        $query = "SELECT A.Admissions AS Admission, E.Enqueries AS Enqueries, E.MONTH AS MONTH FROM admissionsforlastq AS A JOIN enqueriesforlastq AS E ON A.MONTH=E.MONTH";
        $EnqAndAdmission = mysqli_query($db->getConnection(), $query);

        $result=mysqli_query($db->getConnection(),"SELECT count(*) as total from candidates");
        $totalenquiries=mysqli_fetch_assoc($result);

        $result=mysqli_query($db->getConnection(),"SELECT count(*) as total from admissions");
        $totalstudents=mysqli_fetch_assoc($result);

        $query=mysqli_query($db->getConnection(),"SELECT Sum(PaidFees) as total FROM feescollectionlastM");
        $paidfees=mysqli_fetch_assoc( $query);

        $query=mysqli_query($db->getConnection(),"SELECT Sum(TotalFees) as total FROM feescollectionlastM");
        $totalfees=mysqli_fetch_assoc( $query);

        $sql = 'SELECT * FROM feescollectionlastM';
      $result = mysqli_query($db->getConnection(), $sql);

        ?>

    <head>
        <link rel=stylesheet href="../Admin/css/dharwadhubballitutoradmin.css " />
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
            integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
            crossorigin="anonymous" />
        <link rel=stylesheet href=https://use.fontawesome.com/releases/v5.0.7/css/all.css />
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Dashboard</title>
        <style>
        /* .mr-3, .mx-3 {
            margin-right: 1rem !important;
            margin-top: 0rem;
            border-radius: 50px;
        } */
        .widget-stat ,.media {

    align-items: center;
    background-color:#2a0a5e;
}
        .usericon{
            color:#f8c000;
        }
        .mb-1{
            font-size:16px;
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
                'width': 500,
                'height': 300
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('enquiries_div'));
            chart.draw(data, options);
        }

        function drawadmissionsChart() {
            var data = google.visualization.arrayToDataTable([
                ['MONTH', 'Enqueries',  'Admission'],
                <?php
         while ($row = mysqli_fetch_array($EnqAndAdmission)) {

          echo "['" . $row['MONTH'] . "'," . intval($row['Enqueries'] )."," . intval($row['Admission'] ). "],";
        }
         ?>
            ]);

            var options = {
                'title': 'Enqueries and Admission',
                'width': 550,
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
                <div class="col-md-2"></div>
                    <div class="col-md-10">
                      <br/>
                        <div class=row>
                          
                            <div class="col-md-3">
						        <div class="widget-stat card">
							        <div class="card-body">
								        <div class="media">
									        <span class="mr-3">
                                                <i class="fas fa-users fa-3x usericon"></i>
									        </span>
									        <div class="media-body text-white">
									 	        <p class="mb-1">Total Enquiries</p>
										            <h2 class="text-white">
                                                        <?php
                                                          echo $totalenquiries['total'];
                                                         ?>
                                                    </h2>
										        
									        </div>
								        </div>
							        </div>
						        </div>
                            </div>

                            <div class="col-md-3">
						        <div class="widget-stat card">
							        <div class="card-body">
								        <div class="media">
									        <span class="mr-3">
                                            <i class="fas fa-graduation-cap usericon fa-3x"></i>
									        </span>
									        <div class="media-body text-white">
									 	        <p class="mb-1">Total Admissions</p>
										            <h2 class="text-white">
                                                        <?php
                                                            echo $totalstudents['total'];
                                                        ?>
                                                    </h2>
										       
									     </div>
								        </div>
							        </div>
						        </div>
                            </div>

                            <div class="col-md-4">
						        <div class="widget-stat card">
							        <div class="card-body">
								        <div class="media">
									        <span class="mr-3">
                                            <i class="fas fa-rupee-sign usericon fa-3x"></i>
									        </span>
									        <div class="media-body text-white">
									 	        <p class="mb-1">FeesCollection</p>
										            <h2 class="text-white">
                                                        <?php
                                                            echo $paidfees['total'] ."/" .$totalfees['total'];
                                                        ?>
                                                    </h2>
										       
									     </div>
								        </div>
							        </div>
						        </div>
                            </div>
                            <div class="col-md-1"></div>
                        </div>
                            <br/> <br/>
                        <table class="table">
                            <!-- <tr class="row">
                                    <td>
                                         <div id="piechart_div" style="border: 1px solid #ccc"></div>
                                     </td>
                                     <td>
                                          <div id="barchart_div" style="border: 1px solid #ccc"></div>
                                     </td>
                            </tr> -->
                            <tr >
                                 <td>
                                     <div id="enquiries_div" style="border: 1px solid #ccc"></div>
                                </td>
                                 <td>
                                    <div id="admissions_div" style="border: 1px solid #ccc"></div>
                                </td>
                            </tr>
                        </table>
                        <br/><br/>
                        <div class="container"> 
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
                        
                        </div>
                    </div>
            </div>
        </div>
        
       

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
        </script>

    </body>

</html>