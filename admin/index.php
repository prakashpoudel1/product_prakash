<?php
session_start();

?>
<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <title>Admin Panel Dashboard</title>

  <!-- Bootstrap CSS CDN -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <!-- Our Custom CSS -->
  <link rel="stylesheet" href="../css/style4.css">

  <!-- Font Awesome JS -->
  <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js" integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous"></script>
  <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js" integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous"></script>

</head>

<body>

  <div class="wrapper">
    <!-- Sidebar  -->
    <nav id="sidebar">
      <div class="sidebar-header">
        <h3>Admin Panel</h3>
        <strong>AP</strong>
        </div>


        <ul class="list-unstyled CTAs bg-lightyellow">

        <li>
          <a href="../index.php" class="article">Back to User's Home Page</a>
          </li>
         </ul>
         </nav>

    <!-- Page Content  -->
    <div id="content">

      <nav class="navbar navbar-expand-lg navbar-light bg-Success">
        <div class="container-fluid">

          <button type="button" id="sidebarCollapse" class="btn btn-info">
            <i class="fas fa-align-left"></i>

          </button>
          <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <i class="fas fa-align-justify"></i>
          </button>


        </div>
      </nav>

      <!-- login form start-->
      <div class="container" style="padding:40px">
        <div class="row">
          <div class="col-md-3">
          </div>
          <div class="col-md-6">
            <h2 class="display-4">Admin  Login</h2>
            <form action="" method="post">
              <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" name="email" id="email" class="form-control" placeholder="Email" aria-describedby="helpId" required autofocus>
              </div>

              <div class="form-group">
                <label for="password">Password:</label>
                <input type="password" name="password" id="password" class="form-control" placeholder="Password" aria-describedby="helpId" required>
              </div>

              <div class="container">

                <div class="row justify-content-center">
                  <div class="col-auto">
                    <button type="submit" class=" btn-success btn-lg" name="submit">Log in</button>
                    <button type="reset" class=" btn-danger btn-lg">Cancel</button>
                  </div>
                </div>
              </div>
              <br>
              <br>


              <a href="reset-password.php" style="margin:10px 0px">Forgot Password?, Click Here!!</a>

              <br>
              <br>
              

              <a href="signup.php" style="margin:10px 0px">Create New Account?  Signup Here!!</a>

            </form>
            <?php
            include 'connection.php';
            if (isset($_POST['submit'])) {
              $a = $_POST['email'];
              $b = $_POST['password'];
              $b = md5($b);
              $query = "select * from admins where email='$a' and password='$b'";
              $run = mysqli_query($conn, $query);
              if (mysqli_num_rows($run) > 0) {
                $_SESSION['email'] = $a;
                echo "<script>window.open('main.php','_self')</script>";
              } else {
                echo "<script>window.alert('Invalid Admin User!')</script>";
              }
            }
            mysqli_close($conn);
            ?>
          </div>
          <div class="col-md-3">
          </div>
        </div>
      </div>
      <!-- login form end -->

    </div>
  </div>

  <!-- jQuery CDN - Slim version (=without AJAX) -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <!-- Popper.JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
  <!-- Bootstrap JS -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

  <script type="text/javascript">
    $(document).ready(function() {
      $('#sidebarCollapse').on('click', function() {
        $('#sidebar').toggleClass('active');
      });
    });
  </script>
</body>

</html>