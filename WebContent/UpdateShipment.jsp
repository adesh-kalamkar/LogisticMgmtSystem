<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.connection.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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

        <div class="section-title">
          <h2><span>Update</span> Shipment</h2>
          
        </div>

<% 
    if(request.getParameter("submit")!=null)
    {
        String id = request.getParameter("id");
        String hashcode = request.getParameter("hashcode");
        String sdate = request.getParameter("sdate");
        String stime = request.getParameter("stime");
        String location = request.getParameter("location");
        String currentstatus = request.getParameter("currentstatus");
        
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/couriermgmt","root","root");
        pst = con.prepareStatement("update shipment set hashcode = ?,sdate =?,stime= ?,location= ?,currentstatus= ? where id = ?");
        
        pst.setString(1, hashcode);
        pst.setString(2, sdate);
        pst.setString(3, stime);
        pst.setString(4, location);
        pst.setString(5, currentstatus);
       /*  pst.setString(11, password); */
         pst.setString(6, id);
        pst.executeUpdate();  
        
        %>
        
        <script>   
            alert("Updated Successfully"); 
          
       </script>
    <%             
    }

%>

<section id="pricing" class="pricing section-bg">
      <div class="container">

        

        <div class="row">

          <div class="col-lg-4 col-md-6">
            
          </div>

          <div class="col-lg-4 col-md-6 mt-4 mt-md-0">
            <div class="box recommended" data-aos="zoom-in">
              
              
               <form  method="POST" action="#" >
                    
                    <%    
                         Connection con;
                        PreparedStatement pst;
                        ResultSet rs;
        
                         Class.forName("com.mysql.jdbc.Driver");
                          con = DriverManager.getConnection("jdbc:mysql://localhost:3306/couriermgmt","root","root");
                           
                          String id = request.getParameter("id");
                          
                        pst = con.prepareStatement("select * from shipment where id = ?");
                        pst.setString(1, id);
                        rs = pst.executeQuery();
                        
                         while(rs.next())
                         {
                    
                    %>
                    <!-- <div "align="center"> -->
                   <div alight="left">
                        <label class="form-label">Hashcode :- </label>
                        <input type="text" class="form-control" placeholder="hashcode" value="<%= rs.getString("hashcode")%>" name="hashcode" id="hashcode" required >
                    
                     </div>
                     
                      <div alight="left">
                        <label class="form-label">Date :- </label>
                        <input type="text" class="form-control" placeholder="Student Address" value="<%= rs.getString("sdate")%>" name="sdate" id="sdate" required >
                     </div>
                     
                     <div alight="left">
                        <label class="form-label">Time :- </label>
                        <input type="text" class="form-control" placeholder="Student Name" value="<%= rs.getString("stime")%>" name="stime" id="stime" required >
                     </div>
                     
                     <div alight="left">
                        <label class="form-label">Location :- </label>
                        <input type="text" class="form-control" placeholder="Student Mobile No" value="<%= rs.getString("location")%>" name="location" id="location" required >
                     </div>
                     
                     <div alight="left">
                        <label class="form-label">Current Status :- </label>
                        <input type="text" class="form-control" placeholder="Student Date of Birth" value="<%= rs.getString("currentstatus")%>" name="currentstatus" id="currentstatus" required >
                     </div>
                     
                     
                    
                    <% }  %>
                    
                    
              <div class="btn-wrap">
                
                <input type="submit" id="submit" value="Update" name="submit" class="btn-buy">
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 mt-4 mt-lg-0">
           
          </div>

        </div>

      </div>
    </section><!-- End Pricing Section -->
       
    

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