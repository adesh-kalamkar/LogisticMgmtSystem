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
<style type="text/css">
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
  background: #408080;
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
          <li><a href="AdminHome.jsp" class="active">Home</a></li>

          <li><a href="ViewRequest.jsp" >View Request</a></li>
         <li class="dropdown"><a href="#"><span>View</span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="ViewUsers.jsp" >View Users</a></li>            
              <li><a href="ViewDeliveryPerson.jsp">View Delivery Person</a></li>
                         
            </ul>
          </li>
              <li class="dropdown"><a href="#"><span>Welcome<%response.setContentType("text/html");  
				 HttpSession sessio=request.getSession(true);  
	               if(session!=null){  
	               String name=(String)session.getAttribute("name");  
	                out.print(" "+name+""); }   %></span> <i class="bi bi-chevron-down"></i></a>
            <ul>
              <li><a href="ViewProfile.jsp">View Profile</a></li>            
              <li><a href="LogoutController">Logout</a></li>            
            </ul>
          </li>
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
                     Connection con=DBConnection.getConnection();
                     Statement st=con.createStatement();
                     /* ResultSet rs=st.executeQuery("select createpackup.id,createpackup.r_name,createpackup.r_address,createpackup.r_pin,createpackup.item,user.name,user.address,createpackup.status,createpackup.statuss,createpackup.statusss from createpackup inner join user on createpackup.email=user.email");
                      */
                       ResultSet rs=st.executeQuery("select * from createpackup");
                       
                       
                       /* ResultSet rs=st.executeQuery("select createpackup.id,createpackup.r_name,createpackup.r_address,createpackup.r_pin,createpackup.item,user.name,user.address,createpackup.status,createpackup.statuss,createpackup.statusss from createpackup inner join user on createpackup.email=user.email");
                        */
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
								<!-- <th>R. Pin</th> -->
								<th>R. Item</th>
								
								<!-- <th>S_Pin</th>
								<th>R_Pin</th>
								<th>S_Mobile</th>
								<th>R_Mobile</th>
								<th>S_Email</th>
								<th>R_Email</th>
								<th>S_City</th>
								<th>R_City</th>
								<th>S_State</th>
								<th>R_State</th>
								<th>S_Dist</th>
								<th>R_Dist</th>
								<th>Date</th>
								<th>P_Time</th>
								<th>Item</th>
								<th>OTP</th>
								<th>Pri</th> -->
								<th>Status</th>
								<th>Transfer to Delivery Person</th>
								<th>Action</th>
		                  </tr>
		                  <%}%>
                    	 <TR>
                    	  <td style="color:black"><%=rs.getString(2) %></td>
                    	 <td style="color:black"><%=rs.getString(4) %></td>
                    	  <td style="color:black;"><%=rs.getString(3) %></td> 
                    	  <td style="color:black"><%=rs.getString(5) %></td> 
                    	 <td style="color:black"><%=rs.getString(20) %></td>
                    	 <%-- <td style="color:black"><%=rs.getString(25) %></td>  --%>
                    	  <%-- <td style="color:black"><%=rs.getString(6) %></td>
                    	 <td style="color:black"><%=rs.getString(7) %></td>
                    	  <td style="color:black;"><%=rs.getString(2) %></td> 
                    	  <td style="color:black"><%=rs.getString(3) %></td> 
                    	 <td style="color:black"><%=rs.getString(4) %></td>
                    	 <td style="color:black"><%=rs.getString(5) %></td> --%>
                    	 
                    	 
                    	<%--  <td style="color:black"><%=rs.getString(9) %></td>
                    	  <td style="color:black"><%=rs.getString(10) %></td>
                    	   <td style="color:black"><%=rs.getString(11) %></td>
                    	    <td style="color:black"><%=rs.getString(12) %></td>  --%>
                         
                    	 <th><a class="btn-get-startedd" href="UpdatePackupStatusController?id=<%=rs.getInt(1)%>&status=<%=rs.getString(26)%>" style="color:#fff"><%=rs.getString(26)%></a></th> 
                    	 <th><a class="btn-get-started" href="UpdatePackupStatussController?id=<%=rs.getInt(1)%>&statuss=<%=rs.getString(27)%>"><%=rs.getString(27)%></a></th> 
                    	 <td><a href="DeleteRequestCon?id=<%=rs.getInt(1)%>"><img alt="" src="assets/img/delete.jpg" width="35px;" height="35px;"><b></b></a></td> 
                    	
                    	 <%-- <td><a href="DeleteRequestCon?id=<%=rs.getInt(1)%>"><b>Delete</b></a></td> --%> 
                    	 </TR>                    	 
                    <%count++; }while(rs.next());}%> 
                   
                    </table>     
                 
						</div>
					</div>
				</div>
			

    </section><!-- End Contact Section -->
  

 <%-- 
<br><br>
<!-- ======= Contact Section ======= -->
    <section id="contact" class="contact">
      <div class="container">

     
       

		
<h3><b><center><font color="blue" face="times new roman">View Request</font></center></b></h3>

<hr>
<table class="table table-bordered">
							<tr class="danger" >
								
								<th style="text-size:5px;">Name</th>
								
								<th style="text-size:5px;">S_Address</th>
								<th style="text-size:5px;">R_Address</th>
								<th style="text-size:5px;">S_Pin</th>
								<th style="text-size:5px;">R_Pin</th>
								<th style="text-size:5px;">S_Mobile</th>
								<th style="text-size:5px;">R_Mobile</th>
								<th>S_Email</th>
								<th>R_Email</th>
								<th>S_City</th>
								<th>R_City</th>
								<th>S_State</th>
								<th>R_State</th>
								<th>S_Dist</th>
								<th>R_Dist</th>
								<th>Date</th>
								<th>P_Time</th>
								<th>Item</th>
								<th>OTP</th>
								<th>Pri</th>
								<th>Status</th>
								
							</tr>
							<%
								Connection con = DBConnection.getConnection();
								Statement st = con.createStatement();
								ResultSet rs = st.executeQuery("select * from createpackup");
								while (rs.next()) {
							%>
							<TR>

								<td><%=rs.getString(2)%><br><%=rs.getString(3)%></td>
								
								<td><%=rs.getString(4)%></td>
								<td><%=rs.getString(5)%></td>			
								<td><%=rs.getString(6)%></td>
								<td><%=rs.getString(7)%></td>
								<td><%=rs.getString(8)%></td>
								<td><%=rs.getString(9)%></td>
								<td><%=rs.getString(10)%></td>			
								<td><%=rs.getString(11)%></td>
								<td><%=rs.getString(12)%></td>
								<td><%=rs.getString(13)%></td>
								<td><%=rs.getString(14)%></td>
								<td><%=rs.getString(15)%></td>			
								<td><%=rs.getString(16)%></td>
							
							</TR>



						<%
							}
						%>
						</table>

</div>
      </div>
    </section><!-- End Contact Section -->

 --%>
    

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