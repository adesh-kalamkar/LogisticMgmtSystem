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
 * Servlet implementation class Track
 */
@WebServlet("/Track")
public class Track extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Track() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		out.println("Location of your parcel");
		out.println("YOUR PARCEL IS DISPATCHED");
		int i=Integer.parseInt(request.getParameter("i"));
		i=110;
		if(i>=10)
		{
			RequestDispatcher rd=request.getRequestDispatcher("track.html");
			rd.include(request, response);
			out.println("<center><b><font color=red size=6>YOUR PARCEL IS DISPATCHED</b></font></center>");
		}
		
		else
		{
			out.println("<h2 color=yellow>");
			out.println("YOUR PARCEL IS NOT DISPATCHED");
			out.println("</h2>");
		}
	}

	}


