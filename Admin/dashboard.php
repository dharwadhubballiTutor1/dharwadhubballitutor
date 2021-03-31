<!doctype html>
<html lang="en">
<?php
        include "../DB Operations/dbconnection.php";
        $db=ConnectDb::getInstance();
        $query = "SELECT * FROM `coursebasedenq`";

        $exec = mysqli_query($db->getConnection(), $query);
       
        ?>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
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
         while ($row = mysqli_fetch_array($exec)) {

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

    function drawAdmissionsChart() {
        var data = google.visualization.arrayToDataTable([
          ['Year', 'Sales', 'Expenses', 'Profit'],
          ['2014', 1000, 400, 200],
          ['2015', 1170, 460, 250],
          ['2016', 660, 1120, 300],
          ['2017', 1030, 540, 350]
        ]);

        var options = {
          chart: {
            title: 'DharwadHubballiTutor',
            subtitle: 'Enquiries,Admissions',
          }
        };

        var chart = new google.charts.Bar(document.getElementById('admissions-div'));

        chart.draw(data, google.charts.Bar.convertOptions(options));
      }

  </script>
</head>

<body>
<table class="columns">
      <tr>
      <td> <div id="enquiries_div"></div></td>
      <td><div id="admissions_div"></div></td>
      </tr>
</table>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>

</body>

</html>