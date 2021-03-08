<?php
   include "../DB Operations/dbconnection.php";
   session_start();
   
   if($_SERVER["REQUEST_METHOD"] == "POST") {
      // username and password sent from form 
      $db=ConnectDb::getInstance();
      $myusername = mysqli_real_escape_string($db->getConnection(),$_POST['admin_name']);
      $mypassword = mysqli_real_escape_string($db->getConnection(),$_POST['admin_pass']); 
      
      $sql = "SELECT id FROM admin WHERE admin_name = '$myusername' and admin_pass = '$mypassword'";
      $result = mysqli_query($db->getConnection(),$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      // $active = $row['active'];
      $count = mysqli_num_rows($result);
      
      // If result matched $myusername and $mypassword, table row must be 1 row
		
      if($count == 1) {
         // echo "Validateed successfully";
         
         $_SESSION['login_user'] = $myusername;
         
         header("location: enquiries.php");
      }else {
         echo "Your Login Name or Password is invalid";
      }
   }
?>
<html>
   
   <head>
      <title>Login Page</title>
      <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

      <style>
      body {
  margin: 0;
  padding: 0;
  background-color: #2a0a5e;
  height: 100vh;
}
#login .container #login-row #login-column #login-box {
  margin-top: 120px;
  max-width: 400px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #f8c000;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -85px;
}
.label{
   color:#2a0a5e;
}
.btn-warning {
  background-color: #2a0a5e;
  color: #f8c000;
}
.btn-warning:hover {
  background-color: #2a0a5e;
  color: #f8c000;
}
</style>
      
   </head>
   
   <body >
   <div id="login">
        <h3 class="text-center text-white pt-5">Admin Login</h3>
        <div class="container">
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-4">
                    <div id="login-box" class="col-md-6">
                        <form id="login-form" class="form" action="" method="post">
                        <h2 style="color: #2a0a5e" class="text-center">Login</h2>
                            <div class="form-group">
                                <label for="admin_name" class="label"><b>Admin-name:</b></label><br>
                                <input type="text" name="admin_name" id="admin_name" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="admin_pass" class="label"><b>Password:</b></label><br>
                                <input type="password" name="admin_pass" id="admin_pass" class="form-control" required>
                            </div>
                            <div class="form-group">
                            <button type="submit" class="btn btn-warning">Submit</button>
                            </div>
   </body>
</html>