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

  <br><br><br>
<!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

        <div class="section-title">
          <h2><span>View</span> Request</h2>
          
        </div>
 
        
       
     
				<div class="row">
					<div class="col-md-12">
						
						
                    <table class="table table-bordered" style="color:black">
                    
                     <%
                     String email=request.getParameter("email");
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                      /*  ResultSet rs=st.executeQuery("select * from createpackupwhere");    */
                        ResultSet rs=st.executeQuery("select createpackup.id,createpackup.r_name,createpackup.r_address,createpackup.r_pin,createpackup.item,user.name,user.address,createpackup.status from createpackup inner join user on createpackup.email=user.email");
                        
                     //while(rs.next())
                     if(rs.next() == false) {
                    	%>
                    	<h4 style="text-align:right;margin-right:70px"><b>No Users Present</b></h4>
                    	<%
                     }
                    else{
                    	int count=0;
                    	do{	 
                    	 if(count == 0) {	
                    	 %>
                    	 <tr  class="danger" style="color:black; margin-left:10px;" >
		                    <th>S. Name</th>
								<th>S. Address</th>
								<th>R. Name</th>
								<th>R. Address</th>
								<th>R. Pin</th>
								<th>R. Item</th>
								<th>Status</th>
								
		                  </tr>
		                  <%}%>
                    	 <TR>
                    	  <td style="color:black"><%=rs.getString(6) %></td>
                    	 <td style="color:black"><%=rs.getString(7) %></td>
                    	  <td style="color:black;"><%=rs.getString(2) %></td> 
                    	  <td style="color:black"><%=rs.getString(3) %></td> 
                    	 <td style="color:black"><%=rs.getString(4) %></td>
                    	 <td style="color:black"><%=rs.getString(5) %></td>
                         <td style="color:black"><%=rs.getString(8) %></td> 
         
                    	 </TR>                    	 
                    <%count++; }while(rs.next());}%> 
                   
                    </table>     
                 
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