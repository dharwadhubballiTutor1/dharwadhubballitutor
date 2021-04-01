<!doctype html>
<html lang="en">
    <?php
        include "../DB Operations/dbconnection.php";
        $db=ConnectDb::getInstance();
        $query = "SELECT * FROM `coursebasedenq`";
        $courseBasedEnq = mysqli_query($db->getConnection(), $query);
        $query = "SELECT A.Admissions AS Admission, E.Enqueries AS Enqueries, E.MONTH AS MONTH FROM admissionsforlastq AS A JOIN enqueriesforlastq AS E ON A.MONTH=E.MONTH";
        $EnqAndAdmission = mysqli_query($db->getConnection(), $query);
        ?>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <title>Dashboard</title>
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
                'width': 600,
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
                'width': 600,
                'height': 300
            };
            var chart = new google.visualization.BarChart(document.getElementById('admissions_div'));
            chart.draw(data, options);

        }
        </script>
    </head>

    <body>
        <table class="table">
            <tr class="row">
                <td>
                    <div id="piechart_div" style="border: 1px solid #ccc"></div>
                </td>
                <td>
                    <div id="barchart_div" style="border: 1px solid #ccc"></div>
                </td>
            </tr>
            <tr>
                <td>
                    <div id="enquiries_div" style="border: 1px solid #ccc"></div>
                </td>
                <td>
                    <div id="admissions_div" style="border: 1px solid #ccc"></div>
                </td>
            </tr>
        </table>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous">
        </script>

    </body>

</html>