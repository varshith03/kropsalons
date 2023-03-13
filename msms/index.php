<?php
session_start();
error_reporting(0);

include('includes/dbconnection.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>Krop Salons || Home Page</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i%7cMontserrat:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- Style -->
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js "></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js "></script>
<![endif]-->
</head>
<style>
.zoom {
    margin-right: 10px;
  padding: 6px;
  transition: transform .2s;
  margin: 0 auto;
  border-radius: 40px;
}
.zoom:hover {
  -ms-transform: scale(1.5); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.5); 
}

</style>
<body>
    <?php include_once('includes/header.php');?>
    <div class="hero-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                    <h1 class="hero-title">KROP SALONS</h1>
                    <p class="hero-text"><strong>Your Types. Your Style. Your Color.</strong> </p>
                    <a href="salon_list.php" class="btn btn-default">Make an Appointment</a> </div>
            </div>
        </div>
    </div>
   <div class="gallery">
    <h2 style="padding: 33px;
    font-size: 50px;
    color: #aa9144;
    text-align: center;"><strong style=" font-weight: bold;">PHOTO GALLERY</strong></h2>
<p style="text-align:center;
font-size: 25px;">
Our creations that have transformed our customers</p>
    <div class="photo-pad">
       
        <img src="images/p1.jpg" class='zoom' alt="photo1" width="360" height="300" style="
    margin-left: 363px">
        
        <img src="images/p2.jpg" class='zoom' alt="photo1" width="360" height="300">

        <img src="images/p3.jpg" class='zoom' alt="photo1" width="360" height="300">
        <br>
    
        <img src="images/p4.jpg" class='zoom' alt="photo1" width="360" height="300" style="
    margin-left: 363px">
        <img src="images/p5.jpg" class='zoom' alt="photo1" width="360" height="300">
         <img src="images/p6.jpg"  class='zoom' alt="photo1" width="360" height="300">
        <br><br><br>

    </div>
   </div>
    <div class="space-medium bg-default">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-md-5 col-sm-12 col-xs-12"><img src="images/about-img.jpg" alt="" class="img-responsive" style="border-radius: 10px;"></div>
                <div class="col-lg-7 col-md-7 col-sm-12 col-xs-12">
                    <div class="well-block" style="border-radius: 10px;">
                        <?php

$ret=mysqli_query($con,"select * from tblpage where PageType='aboutus' ");
$cnt=1;
while ($row=mysqli_fetch_array($ret)) {

?>
                        <h1 style="font-size: 43px;"><?php  echo $row['PageTitle'];?></h1>
                        <h5 class="small-title ">best experience ever</h5>
                        <p style="font-size: 17px;"><?php  echo $row['PageDescription'];?></p><?php } ?>
                         </div>
                </div>
            </div>
        </div>
    </div>
   
   
    <?php include_once('includes/footer.php');?>
    <!-- /.footer-->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/menumaker.js"></script>
    <!-- sticky header -->
    <script src="js/jquery.sticky.js"></script>
    <script src="js/sticky-header.js"></script>
</body>

</html>
