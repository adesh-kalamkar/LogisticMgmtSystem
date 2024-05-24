<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>LogisticsManagementSystem</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Sailor - v4.7.0
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
<style>
  #contact .btn-get-started {
  font-family: "Raleway", sans-serif;
  font-weight: 500;
  font-size: 14px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 14px 32px;
  border-radius: 4px;
  transition: 0.5s;
  line-height: 1;
  color: #fff;
  -webkit-animation-delay: 0.8s;
  animation-delay: 0.8s;
  background: #d9232d;
}

#contact .btn-get-startedd {
  font-family: "Raleway", sans-serif;
  font-weight: 500;
  font-size: 14px;
  letter-spacing: 1px;
  display: inline-block;
  padding: 14px 32px;
  border-radius: 4px;
  transition: 0.5s;
  line-height: 1;
  color: #fff;
  -webkit-animation-delay: 0.8s;
  animation-delay: 0.8s;
  background: #008080;
}
  </style>

<script>
function d()
{
	document.f1.pri.value=document.f1.opt.value;
	document.f1.hd.value=document.f1.opt.item(document.f1.opt.selectedIndex).text;
	}
</script>
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex align-items-center">

      <h1 class="logo me-auto"><a href="Home.jsp">Logistics Management System</a></h1>
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="index.html" class="logo me-auto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav id="navbar" class="navbar">
        <ul>
         <li><a href="Home.jsp" class="active">Home</a></li>

             <li class="dropdown"><a href="#"><span>Courier</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
             <li><a href="CreatePackupRequest.jsp">CREATE PICKUP REQUEST</a></li>
              <li><a href="ViewPickupRequestUser.jsp">View Pickup Request</a></li>          
            </ul>
          </li>
          <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String name=(String)session.getAttribute("name");  
	                out.print(" "+name+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="ViewProfileUser.jsp">View Profile</a></li>            
            
              <li><a href="LogoutController">Logout</a></li>            
            </ul>
          </li>
          <!-- <li><a href="index.html" class="getstarted">Get Started</a></li> -->
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

 
<br><br>
<!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

     
       
<form action="CreatePackupRequestController" method="post" name="f1" >
		<div>
<h3><b><center><font color="blue" face="times new roman">CREATE PICKUP REQUEST</font></center></b></h3>

<hr>


<table align="center" cellpadding="6" width="80%">
<tr><td><input type="hidden" name="p_id"></td></tr>
<tr>
	<td colspan="2"><b><font size="5">SENDER</font></b></td>
	<td></td><td></td><td></td><td></td>
	<td colspan="2"><b><font size="5">RECEIVER</font></b></td>
</tr>	
<tr>
	<td>Name<font color="red">*</font></td>
	<td><input type="text" name="s_name" id="fname" required placeholder="please enter name" autofocus></td>
	<td></td><td></td><td></td><td></td>
	<td>Name<font color="red">*</font></td>
	<td><input type="text" name="r_name" id="fname" required placeholder="please enter name" autofocus></td>
</tr>
<tr>
    <td>Address</td>
    <td><input type="text" name="s_address" id="paddress" rows="3" cols="21"></td>
    <td></td><td></td><td></td><td></td>
    <td>Address</td>
    <td><input type="text" name="r_address" id="paddress" rows="3" cols="21"></td>
</tr>
<tr>
	<td>Pincode</td>
	<td><input type="text" name="s_pin"></td>
	<td></td><td></td><td></td><td></td>
	<td>Pincode</td>
	<td><input type="text" name="r_pin"></td>
</tr>
<tr>
	<td>Mobile no.</td>
	<td><input type="text" name="s_mobile" maxlength="10"></td>
	<td></td><td></td><td></td><td></td>
	<td>Mobile no.</td>
	<td><input type="text" name="r_mobile" maxlength="10"></td>
</tr>
<tr>
	<td>Email-id<font color="red">*</font></td>
	<td><input type="email" name="s_email" required></td>
	<td></td><td></td><td></td><td></td>
	<td>Email-id<font color="red">*</font></td>
	<td><input type="email" name="r_email" required></td>
</tr>
<tr>
    <td>City</td>
    <td><input type="text" name="s_city" id="city"></td>
    <td></td><td></td><td></td><td></td><td>City</td>
    <td><input type="text" name="r_city" id="city"></td>
</tr>
<tr>
	<td>State</td>
	<td><input type="text" name="s_state"></td>
	<td></td><td></td><td></td><td></td><td>State</td>
	<td><input type="text" name="r_state">	</td>
</tr>
<tr>
	<td>District</td>
	<td><input type="text" name="s_dis" id="dis"></td>
	<td></td><td></td><td></td><td></td><td>District</td>
	<td><input type="text" name="r_dis" id="dis"></td>
</tr>

<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
</table>
<br>

<table align="center" cellpadding="6" width="80%">
<h2 align="center">Parcel_Details</h2>
	<tr>
	<td>Date<font color="red">*</font></td>
	<td><input type="date" name="date" id="date" autofocus></td>
	<td>Time<font color="red">*</font></td>
	<td><input type="time" name="p_time" id="time" autofocus></td>
	<td>Items<font color="red">*</font></td>
	<td><input type="text" name="item" autofocus></td>
	</tr>
	<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
	<tr>
	<td>Distance<font color="red">*</font></td>
	<td><select name="opt" onchange="d()" >
	<option>select</option>
	<option value="50">1km-5km</option>
	<option value="100">6km-10km</option>
	<option value="120">11km-15km</option>
	<option value="150">16km-20km</option>
	<option value="180">21km-25km</option>
	<option value="220">26km-30km</option>
	<option value="240">31km-35km</option>
	<option value="250">36km-40km</option>
	<option value="280">46km-50km</option>
	</td>
	<td>Price<font color="red">*</font></td>
	<td><input type="text" name="pri" readonly><input type="hidden" name="hd"></td>
	<td>Enter Quantity<font color="red">*</font></td>
	<td><input type="text" name="qty" id="weight" autofocus></td>
	<td><input type="email" name="email" id="email" value=${email } readonly></td>
	
	</tr>
</table>
<br/>
<center><input type="submit" class="btn-get-startedd" value="Create Packup">  <input type="reset" class="btn-get-started" name="reset" value="Reset">
</center>
</form>
</div>
      </div>
    </section><!-- End Contact Section -->


    

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>