package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.bean.CourierBean;
import com.connection.DBConnection;

public class CourierDao {
	
	Connection connection=null;
	Boolean resultStatus=Boolean.FALSE;
	PreparedStatement ps;
	ResultSet rs;
    Statement st=null;
    String sql;
    boolean flag = false;
    
    
	public boolean InsertCourierCreatePackupData(CourierBean b) {
		sql = "insert into createpackup(s_name,r_name,s_address,r_address,s_pin,r_pin,s_mobile,r_mobile,s_email,r_email,s_city,r_city,s_state,r_state,s_dis,r_dis,date,p_time,item,opt,pri,qty,email,hashcode,status,statuss,statusss) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);
			
			
			ps.setString(1, b.getS_name());
			ps.setString(2, b.getR_name());
			ps.setString(3, b.getS_address());
			ps.setString(4, b.getR_address());
			ps.setString(5, b.getS_pin());
			ps.setString(6, b.getR_pin());
			ps.setString(7, b.getS_mobile());
			ps.setString(8, b.getR_mobile());
			ps.setString(9, b.getS_email());
			ps.setString(10, b.getR_email());
			ps.setString(11, b.getS_city());
			ps.setString(12, b.getR_city());
			ps.setString(13, b.getS_state());
			ps.setString(14, b.getR_state());
			ps.setString(15, b.getS_dis());
			ps.setString(16, b.getR_dis());
			ps.setString(17, b.getDate());
			ps.setString(18, b.getP_time());
			ps.setString(19, b.getItem());
			ps.setString(20, b.getOpt());
			ps.setString(21, b.getPri());
			ps.setString(22, b.getQty());	
			ps.setString(23, b.getEmail());
			ps.setInt(24,b.getHashcode());
			ps.setString(25, b.getStatus());
			ps.setString(26, b.getStatuss());
			ps.setString(27, b.getStatusss());
			

			int index = ps.executeUpdate();

			if (index > 0) {
				flag = true;
			} else {
				flag = false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return flag;
	}


	public boolean UpdatePackupStatusss(int id, String statusss) {
		if(statusss.equalsIgnoreCase("Accepted"))
			statusss="Pending";
		else
			statusss="Accepted";
		
		String sql="update createpackup set statusss=? where id=?";
		
		try {
			ps=DBConnection.getConnection().prepareStatement(sql);
			ps.setString(1, statusss);
			ps.setInt(2, id);
			
			int index=ps.executeUpdate();
			if(index>0)
			{
				flag=true;
			}
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return flag;
	}


	public ResultSet SelectPackupdetailsss() {
		ResultSet rs= null;
		String sql ="Select * from createpackup";
		try {
			PreparedStatement pstmt = DBConnection.getConnection().prepareStatement(sql);
			rs = pstmt.executeQuery();			
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		return rs;
	}


	public boolean InsertShipmentDetails(CourierBean b) {
		sql = "insert into shipment(hashcode,sdate,stime,location,currentstatus,slocation,dlocation) values(?,?,?,?,?,?,?)";

		Connection con = DBConnection.getConnection();

		try {
			ps = con.prepareStatement(sql);
			
			
			ps.setInt(1, b.getHashcode());
			ps.setString(2, b.getSdate());
			ps.setString(3, b.getStime());
			ps.setString(4, b.getLocation());
			ps.setString(5, b.getCurrentstatus());
			ps.setString(6, b.getSlocation());
			ps.setString(7, b.getDlocation());
			

			int index = ps.executeUpdate();

			if (index > 0) {
				flag = true;
			} else {
				flag = false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return flag;

	}


}
