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
 * Servlet implementation class ShowPick
 */
@WebServlet("/ShowPick")
public class ShowPick extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowPick() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("<h1 align=center>Pickup Requests List</h1>");
		
	try
	{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/couriermgmt","root","root");
	String qr="select * from createpackup";
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery(qr);
if(rs.next())
{
	out.println("<table align=center border=1px>");
	do
	{   String p_id=request.getParameter("p_id");
		String s_name=rs.getString("s_name");
		String s_address=rs.getString("s_address");
		String s_pin=rs.getString("s_pin");
		String s_mobile=rs.getString("s_mobile");
		String s_email=rs.getString("s_email");
		String s_city=rs.getString("s_city");
		String s_state=rs.getString("s_state");
		String s_dis=rs.getString("s_dis");
		String r_name=rs.getString("r_name");
		String r_address=rs.getString("r_address");
		String r_pin=rs.getString("r_pin");
		String r_mobile=rs.getString("r_mobile");
		String r_email=rs.getString("r_email");
		String r_city=rs.getString("r_city");
		String r_state=rs.getString("r_state");
		String r_dis=rs.getString("r_dis");
		String Date=rs.getString("Date");
		String p_time=rs.getString("p_time");
		String opt=rs.getString("opt");
		int pri=Integer.parseInt(rs.getString("pri"));
		int qty=Integer.parseInt(rs.getString("qty"));


		out.println("<tr>");
		out.println("<td>");
		out.println(p_id);
		out.println("</td>");
		out.println("<td>");
		out.println(s_name);
		out.println("</td>");
		out.println("<td>");
		out.println(s_address);
		out.println("</td>");
		out.println("<td>");
		out.println(s_pin);
		out.println("</td>");
		out.println("<td>");
		out.println(s_mobile);
		out.println("</td>");
		out.println("<td>");
		out.println(s_email);
		out.println("</td>");
		out.println("<td>");
		out.println(s_city);
		out.println("</td>");
		out.println("<td>");
		out.println(s_state);
		out.println("</td>");
		out.println("<td>");
		out.println(s_dis);
		out.println("</td>");
		out.println("<td>");
		out.println(r_name);
		out.println("</td>");
		out.println("<td>");
		out.println(r_address);
		out.println("</td>");
		out.println("<td>");
		out.println(r_pin);
		out.println("</td>");
		out.println("<td>");
		out.println(r_mobile);
		out.println("</td>");
		out.println("<td>");
		out.println(r_email);
		out.println("</td>");
		out.println("<td>");
		out.println(r_city);
		out.println("</td>");
		out.println("<td>");
		out.println(r_state);
		out.println("</td>");
		out.println("<td>");
		out.println(r_dis);
		out.println("</td>");
		out.println("<td>");
		out.println(Date);
		out.println("</td>");
		out.println("<td>");
		out.println(p_time);
		out.println("</td>");
		out.println("<td>");
		out.println(opt);
		out.println("</td>");
		out.println("<td>");
		out.println(pri);
		out.println("</td>");
		out.println("<td>");
		out.println(qty);
		out.println("</td>");
		out.println("<td>");
		out.println("<a href=DelPick?p_id="+p_id+">Delete</a>");
		out.println("</td>");
		out.println("</tr>");
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


