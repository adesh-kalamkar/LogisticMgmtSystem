package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AdminDao;

/**
 * Servlet implementation class UpdatePackupStatusController
 */
@WebServlet("/UpdatePackupStatusController")
public class UpdatePackupStatusController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdatePackupStatusController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		int id=Integer.parseInt(request.getParameter("id"));
		String status=request.getParameter("status");
		
		AdminDao dao=new AdminDao();
		
		if(dao.UpdatePackupStatus(id, status))
		{
			ResultSet rs=dao.SelectPackupdetails();
			if(rs!= null)
			{
				HttpSession session = request.getSession();
				session.setAttribute("listUsers", rs);
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Packup status updated successfully');");
				out.println("location='ViewRequest.jsp';");
				out.println("</script>");
			}
			
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Packup status not updated');");
				out.println("location='ViewRequest.jsp';");
				out.println("</script>");
			}
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
