package com.controller;


import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Student
 */
@WebServlet("/Student")
public class Student extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public Student() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String uname=request.getParameter("uname");
		String pwd=request.getParameter("pwd");
		if(uname.equals("admin")&&pwd.equals("admin"))
		{
			response.sendRedirect("Uhome");
			//response.sendRedirect("AdminHome");
			//RequestDispatcher rd=request.getRequestDispatcher("AdminHome");
			//rd.forward(request, response);
		}
		
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("admin.html");
			rd.include(request, response);
			out.println("<center><b><font color=red size=6>Invalid id and password</b></font></center>");

		}
	}

}


