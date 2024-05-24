package com.controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShowUser
 */
@WebServlet("/ShowUser")
public class ShowUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowUser() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("<h1 align=center>Login Users</h1>");
		
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/couriermgmt","root","root");
	String qr="select * from user";
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	out.println("<table align=center border=1px>");
	do
	{
		String name=rs.getString("name");
		String email=rs.getString("email");
		String pwd=rs.getString("pwd");
		
		out.println("<tr>");
		out.println("<td>");
		out.println(name);
		out.println("</td>");
		out.println("<td>");
		out.println(email);
		out.println("</td>");
		out.println("<td>");
		out.println(pwd);
		out.println("</td>");
		
		
	}while(rs.next());
	out.println("</table>");
}else
{
	out.println("no record found");
}
	con.close();

	}catch(Exception e)
	{
	 out.println(e);
	}
	}

}
