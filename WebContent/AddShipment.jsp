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
  </style>
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

 <br><br><br><br><br>
<!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span>Add Product Status</span></h2>
          
        </div>
 
       <%
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     ResultSet rs=st.executeQuery("select * from createpackup");
                     //while(rs.next())
                     if(rs.next() == false) {
                    	%>
									<h4 style="text-align: right; margin-right: 70px">
										<b>No Users Present</b>
									</h4>
									<%
                     }
                    else{
                    	int count=0;
                    	do{	 
                    	 if(count == 0) {	
                    	 %>
			
			<form action="AddShipmentDetailsController" method="post" class="formone">
          <div class="row">
            
            <div class="col-md-6 form-group">
              <input type="text" name="hashcode" class="form-control" id="hashcode" value="<%=rs.getString(25)%>" readonly>
            </div>
           
            <div class="col-md-6 form-group">
              <input type="date" name="sdate" class="form-control" id="sdate" placeholder="Shipment Date" required>
            </div>
            <div class="col-md-6 form-group">
              <input type="time" name="stime" class="form-control" id="stime" placeholder="Shipping Time" required>
            </div>
            <div class="col-md-6 form-group">
              <input type="text" name="location" class="form-control" id="location" placeholder="Location" required>
            </div>
            <div class="col-md-6 form-group mt-3 mt-md-0">
              <input type="text" class="form-control" name="currentstatus" id="currentstatus" placeholder="Current Status" required>
            </div>
             <div class="col-md-6 form-group mt-3 mt-md-0">
              <input type="text" class="form-control" name="slocation" id="slocation" value="<%=rs.getString(4)%>" required>
            </div>
            <div class="col-md-6 form-group mt-3 mt-md-0">
              <input type="text" class="form-control" name="dlocation" id="dlocation" value="<%=rs.getString(5)%>" required>
            </div>
          </div>
          <br>
       <div class="text-center"><button type="submit" class="btn-get-started">Submit</button></div>
        </form>
    
             <%}%><%count++; }while(rs.next());}%>
</div>
             
              
		</section>
       
    

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