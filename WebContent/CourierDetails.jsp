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
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Sailor - v4.7.0
  * Template URL: https://bootstrapmade.com/sailor-free-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
  <style type="text/css">

      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
      .controls {
        margin-top: 10px;
        border: 1px solid transparent;
        border-radius: 2px 0 0 2px;
        box-sizing: border-box;
        -moz-box-sizing: border-box;
        height: 32px;
        outline: none;
        box-shadow: 0 2px 6px rgba(0, 0, 0, 0.3);
      }

      #origin-input,
      #destination-input {
        background-color: #fff;
        font-family: Roboto;
        font-size: 15px;
        font-weight: 300;
        margin-left: 12px;
        padding: 0 11px 0 13px;
        text-overflow: ellipsis;
        width: 200px;
      }

      #origin-input:focus,
      #destination-input:focus {
        border-color: #4d90fe;
      }

      #mode-selector {
        color: #fff;
        background-color: #4d90fe;
        margin-left: 12px;
        padding: 5px 11px 0px 11px;
      }

      #mode-selector label {
        font-family: Roboto;
        font-size: 13px;
        font-weight: 300;
      }

  .myimg{
	/* border: 1px solid red; */
	border-radius:50%;
	width:200px;
	}
	
	.background{
	background-color:#d9232d;
	}
	
	#cv-template{
	dispaly-none;
}
    </style>

</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center" style="background-color:#F5F5F5;">
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

 
<br><br><br>


<section id="contact" class="contact">
      <div class="container">

     
       

		<div> <div class="card-header background  text-center">
    <h3 style="color:white;">View Courier Details</h3>
    </div>


							<%


                try{
                	
                String hashcode=request.getParameter("hashcode");
                	Connection con=DBConnection.getConnection();
                    Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from createpackup where hashcode='"+hashcode+"'"); 
						/* 	ResultSet rs=st.executeQuery("select createpackup.id,createpackup.name,createpackup.email,createpackup.address,patient.mobileno,buymed.image,buymed.imagename,buymed.date,buymed.status,buymed.statuss from buymed inner join patient on buymed.email=patient.email");
		                    */ 
		                    while(rs.next()) {
		                       	%>
							
							
							
							<div class="container">
    <div class="row">
    
    <div class="col-md-6 py-5">
    
    
    <div class="card mt-4">
    <!-- <div class="card-header background">
    <h3 style="color:white;">Courier Details</h3>
    </div> -->
    <div class="card-body">
    <p>
<h5>Sender Name:-<%=rs.getString(2)%><br></h5>
								<h5>Receiver Name:-<%=rs.getString(3)%><br></h5>
								<h5>Sender Address:-<%=rs.getString(4)%><br></h5>
								<h5>Receiver Address:-<%=rs.getString(5)%><br></h5>
								 <h5>Date:-<%=rs.getString(18)%></h5>
								<h5>Time:-<%=rs.getString(19)%></h5>
                                <h5>Item:-<%=rs.getString(20)%></h5>
								<h5>Status:-<%=rs.getString(26)%></h5>
								
</p>
    </div>
    </div>
    
	<% 
                   	}
                }catch(Exception e)
                {
                	
                	
                }
                %>
						
    </div>
    <div class="col-md-6 py-5">
    <%


                try{
                	
                String hashcode=request.getParameter("hashcode");
                	Connection con=DBConnection.getConnection();
                    Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from shipment where hashcode='"+hashcode+"'"); 
						/* 	ResultSet rs=st.executeQuery("select createpackup.id,createpackup.name,createpackup.email,createpackup.address,patient.mobileno,buymed.image,buymed.imagename,buymed.date,buymed.status,buymed.statuss from buymed inner join patient on buymed.email=patient.email");
		                    */ 
		                    while(rs.next()) {
		                       	%>
							
							
    
    <div class="card mt-4">
   <!--  <div class="card-header background">
    <h3 style="color:white;">Status</h3>
    </div> -->
    <div class="card-body">
    <p id="objectiveT">
                               
								 <h5>Date:-<%=rs.getString(3)%></h5> 
							     <h5>Time:-<%=rs.getString(4)%></h5>
							     <h5>Location:-<%=rs.getString(5)%></h5>
							     <h5>Status:-<%=rs.getString(6)%></h5>
								</p>
    </div>
    </div>
   
    </div>
    </div>
     <div class="col-md-6 py-5">
    
    <center>
    					
								

	<% 
                   	}
                }catch(Exception e)
                {
                	
                	
                }
                %>
						
    <div class="card mt-4">
     <div class="card-header background">
    <h3 style="color:white;">Courier Location</h3>
    </div>
    <div class="card-body">
    
    
                    <b><a href="map.jsp">Check Location</a></b>
								
    </div>
    </div></center>
   
    </div>
    </div>
    
	




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