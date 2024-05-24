package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.AdminBean;
import com.bean.CourierBean;
import com.dao.AdminDao;
import com.dao.CourierDao;

/**
 * Servlet implementation class AddShipmentDetailsController
 */
@WebServlet("/AddShipmentDetailsController")
public class AddShipmentDetailsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddShipmentDetailsController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

		int hashcode = Integer.parseInt(request.getParameter("hashcode"));		
		String sdate = request.getParameter("sdate");		
		String stime = request.getParameter("stime");
		String location = request.getParameter("location");
		String currentstatus = request.getParameter("currentstatus");
		String slocation = request.getParameter("slocation");
		String dlocation = request.getParameter("dlocation");
		/*String status = "Active";*/

		CourierBean b = new CourierBean();
		
		b.setHashcode(hashcode);
		b.setSdate(sdate);
		b.setStime(stime);
		b.setLocation(location);
		b.setCurrentstatus(currentstatus);	
		b.setSlocation(slocation);
		b.setDlocation(dlocation);
		/*b.setStatus(status);*/

		CourierDao dao = new CourierDao();

		if (dao.InsertShipmentDetails(b)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Added Successfully')");
			out.println("location='AddShipment.jsp';");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('UnSuccessful')");
			out.println("location='AddShipment.jsp';");
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
