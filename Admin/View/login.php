<?php

include "../../DB Operations/dbconnection.php";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // username and password sent from form 
    $db = ConnectDb::getInstance();
    $myusername = mysqli_real_escape_string($db->getConnection(), $_POST['admin_name']);
    $mypassword = mysqli_real_escape_string($db->getConnection(), $_POST['admin_pass']);

    $sql = "SELECT id FROM admin WHERE admin_name = '$myusername' and admin_pass = '$mypassword'";
    $result = mysqli_query($db->getConnection(), $sql);
    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
    // $active = $row['active'];
    $count = mysqli_num_rows($result);

    // If result matched $myusername and $mypassword, table row must be 1 row

    if ($count == 1) {
        // echo "Validateed successfully";
        session_start();
        $_SESSION['login_user'] = $myusername;

        header("location: dashboard.php");
    } else {
        echo "Your Login Name or Password is invalid";
    }
}
?>
<html>

<head>
    <title>Login Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        body {
            margin: 0;
            padding: 0;
            height: 100vh;
        }

        #login #login-box {
            margin-top: 80px;
            max-width: 400px;
            height: 350px;
            border: 1px solid #9C9C9C;
            background-color: #f8c000;
            border-radius: 20px;
        }

        #login #login-box #login-form {
            padding: 20px;
        }

        #login #login-box #login-form #register-link {
            margin-top: 1px;
        }

        .label {
            color: #2a0a5e;
        }

        .btn-warning {
            background-color: #2a0a5e;
            color: #f8c000;
        }

        .btn-warning:hover {
            background-color: #2a0a5e;
            color: #f8c000;
        }
        .card{
            position: relative;
            top: 25%;
            box-shadow: 2px 2px 8px lightgrey;
        }
    </style>
</head>

<body>
    <div id="login">
        <div class="container-fluid">
            <div class="row">
            <div class="col-md-4">
                </div>
                <div class="col-md-4">
                        <div class="card">
                            <div class="card-header">
                                <h6 class="display-6">Login</h6>
                            </div>
                            <div class="card-body">
                            <form id="login-form" 
                            class="form" 
                            action="../Controller/login.php" 
                            method="post" 
                            autocomplete="off">
                                <div class="form-group">
                                    <label for="user_email" class="label">User Name</label><br>
                                    <input type="text" name="user_email" id="user_email" class="form-control" required>
                                </div><br>
                                <div class="form-group">
                                    <label for="user_password" class="label">Password</label><br>
                                    <input type="password" name="user_password" id="user_password" class="form-control" required>
                                </div><br>
                                <div class="form-group">
                                    <button type="submit" class="btn btn-warning">Login</button>
                                </div>
                            </form>
                            </div>
                            <div class="card-footer">
                                <p>All rights reserved to DharwadHubballiTutor</p>
                            </div>
                        </div>
                </div>
                <div class="col-md-4">
                </div>
            </div>
        </div>
    </div>
</body>

</html>