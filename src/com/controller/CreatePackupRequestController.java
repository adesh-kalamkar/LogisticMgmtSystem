package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CourierBean;
import com.dao.CourierDao;
/**
 * Servlet implementation class CreatePackupRequestController
 */
@WebServlet("/CreatePackupRequestController")
public class CreatePackupRequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CreatePackupRequestController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();

//		int hashcode = Integer.parseInt(request.getParameter("hashcode"));
		String s_name = request.getParameter("s_name");		
		String r_name = request.getParameter("r_name");		
		String s_address = request.getParameter("s_address");
		String r_address = request.getParameter("r_address");
		String s_pin = request.getParameter("s_pin");		
		String r_pin = request.getParameter("r_pin");	
		String s_mobile = request.getParameter("s_mobile");
		String r_mobile = request.getParameter("r_mobile");
		String s_email = request.getParameter("s_email");
		String r_email = request.getParameter("r_email");
		String s_city = request.getParameter("s_city");
		String r_city = request.getParameter("r_city");
		String s_state = request.getParameter("s_state");
		String r_state = request.getParameter("r_state");
		String s_dis = request.getParameter("s_dis");
		String r_dis = request.getParameter("r_dis");
		String date = request.getParameter("date");
		String p_time = request.getParameter("p_time");
		String item = request.getParameter("item");
		String opt = request.getParameter("opt");
		String pri = request.getParameter("pri");
		String qty = request.getParameter("qty");
		String email = request.getParameter("email");
		String status = "Pending";
		String statuss = "Send";
		String statusss="Pending";

		CourierBean b = new CourierBean();
		
		int hashcode=b.hashCode();
		System.out.println("hashcode value is:"+hashcode);

		
		b.setS_name(s_name);
		b.setR_name(r_name);
		b.setS_address(s_address);
		b.setR_address(r_address);
		b.setS_pin(s_pin);
		b.setR_pin(r_pin);
		b.setS_mobile(s_mobile);
		b.setR_mobile(r_mobile);
		b.setS_email(s_email);
		b.setR_email(r_email);
		b.setS_city(s_city);
		b.setR_city(r_city);
		b.setS_state(s_state);
		b.setR_state(r_state);
		b.setS_dis(s_dis);
		b.setR_dis(r_dis);
		b.setDate(date);
		b.setP_time(p_time);
		b.setItem(item);
		b.setItem(item);
		b.setOpt(opt);
		b.setPri(pri);
		b.setQty(qty);
		b.setEmail(email);
		b.setHashcode(hashcode);
		b.setStatus(status);
		b.setStatuss(statuss);
		b.setStatusss(statusss);

		CourierDao dao = new CourierDao();

		if (dao.InsertCourierCreatePackupData(b)) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Packup Created Successfully...')");
			out.println("location='CreatePackupRequest.jsp';");
			out.println("</script>");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Somthing wrong..try again')");
			out.println("location='CreatePackupRequest.jsp';");
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
