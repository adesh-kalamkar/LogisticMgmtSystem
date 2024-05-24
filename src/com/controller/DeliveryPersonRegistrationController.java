package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.DeliveryPersonBean;
import com.dao.DeliveryPersonDao;

/**
 * Servlet implementation class DeliveryPersonRegistrationController
 */
@WebServlet("/DeliveryPersonRegistrationController")
public class DeliveryPersonRegistrationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeliveryPersonRegistrationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		String name = request.getParameter("name");		
		String address = request.getParameter("address");		
		String email = request.getParameter("email");
		String mobileno = request.getParameter("mobileno");
		String dob = request.getParameter("dob");		
		String password = request.getParameter("password");		
		String status = "Active";

		DeliveryPersonBean b = new DeliveryPersonBean();
		

		b.setName(name);		
		b.setAddress(address);
		b.setEmail(email);
		b.setMobileno(mobileno);		
		b.setDob(dob);
		b.setPassword(password);
		b.setStatus(status);

		DeliveryPersonDao dao = new DeliveryPersonDao();

		if (dao.InsertDeliveryPersonData(b)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Registration Successful')");
			out.println("location='DeliveryPersonLogin.jsp';");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Registration UnSuccessful')");
			out.println("location='DeliveryPersonRegister.jsp';");
			out.println("</script>");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
