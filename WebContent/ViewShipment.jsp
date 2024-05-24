<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
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
<!-- <style>
	div
	{
        height:680px;
        width:993px;
        border-color:black;
        background-color:aliceblue;
        margin:auto;
        border-style:solid;
	}
	table
	{
		border-color:black;
        text-align:left;
        background-color:lightgrey;
        border:3;
	}
	th
	{
     background-color: wheat;
	}
</style> -->


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
          <li><a href="DeliveryPersonHome.jsp" class="active">Home</a></li>
           <li><a href="ViewRequest1.jsp" >View Request</a></li>  
          <li class="dropdown"><a href="#"><span>Shipment Status</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
            
          <li><a href="AddShipment.jsp" >Add Shipment</a></li>
          <li><a href="ViewShipment.jsp" >Update Shipment</a></li>
          </ul></li>
              <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String name=(String)session.getAttribute("name");  
	                out.print(" "+name+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="ViewProfileDeliveryPerson.jsp">View Profile</a></li>                        
              <li><a href="LogoutController">Logout</a></li>            
            </ul>
          </li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->

 
<br><br>
<!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

     
       

		<div>
<h3><b><center><font color="#000" face="times new roman">View Shipment</font></center></b></h3>

<hr>
<table class="table table-bordered">
							<tr class="danger">
								
								<th>hashcode</th>
								<th>Date</th>
								
								<th>Time</th>
								<th>Location</th>
								<th>Current Status</th>
								<th>Edit</th>
								<th>Action</th>
								
							</tr>
							<%
								Connection con = DBConnection.getConnection();
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("select * from shipment");
								while (rs.next()) {
							%>
							<TR>

								<td><%=rs.getString(2)%></td>
								<td><%=rs.getString(3)%></td>
								<td><%=rs.getString(4)%></td>
								<td><%=rs.getString(5)%></td>
								
								<td><%=rs.getString(6)%></td>
							 
                    	<td><a style="color:green;" href="UpdateShipment.jsp?id=<%=rs.getInt(1)%>"><b>Edit</b></a></td>
							<td><a href="DeleteShipmentCon?id=<%=rs.getInt(1)%>"><img alt="" src="assets/img/delete.jpg" width="25px;" height="25px;"><b></b></a></td> 
                    	
							</TR>



						<%
							}
						%>
						</table>

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