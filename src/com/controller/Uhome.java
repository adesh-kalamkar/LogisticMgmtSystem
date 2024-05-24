package com.controller;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Uhome
 */
@WebServlet("/Uhome")
public class Uhome extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Uhome() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("<body bgcolor=mistyrose>");
		out.println("<h1 align=center>WELCOME TO THE WEBSITE</h1>");
		//HttpSession session=request.getSession();
		//String email=(String) session.getAttribute("uid");
		
		out.println("<a href=addst.html>Add </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		out.println("<a href=delst.html>Delete</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		out.println("<a href=up.html>Update</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
		out.println("<a href=Show>Show</a>");
		out.println("<br/>");
		out.println("<h1 align=center>PICKUP REQUESTS</h1>");
		out.println("<center><a href=ShowPick>Show Requests</a></center>");
		out.println("<br/>");
		out.println("<h1 align=center>LOGIN USERS</h1>");
		out.println("<center><a href=ShowUser>Show Login</a></center>");
		out.println("<br/>");
		out.println("</body>");
	}

}
