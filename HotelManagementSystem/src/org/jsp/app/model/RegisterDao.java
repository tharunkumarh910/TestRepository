package org.jsp.app.model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;

public class RegisterDao {
	public String registerUser(RegisterConnection rc) {
		String user_id=rc.getUser_id();
		String password=rc.getPassword();
		String rp=rc.getRp();
		String role=rc.getRole();
		String user_name=rc.getUser_name();
		String mobile_no=rc.getMobile_no();
		String phone=rc.getPhone();
		String address=rc.getAddress();
		String email=rc.getEmail();
		try {
			System.out.println("wertyi");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=shivababa");
			System.out.println("asdfghj");
			PreparedStatement pstmp = conn.prepareStatement("insert into hotelmanagementregistration.users values(?,?,?,?,?,?,?,?)");
			System.out.println("zxcbnm");
			
				System.out.println("wertyi");
				pstmp.setString(1, user_id);
				pstmp.setString(2, password);
				pstmp.setString(3, role);
				pstmp.setString(4, user_name);
				pstmp.setString(5, mobile_no);
				pstmp.setString(6, phone);
				pstmp.setString(7, address);
				pstmp.setString(8, email);
				System.out.println("sssfule");
				//RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
				//rd.include(request, response);
				//response.sendRedirect("login.jsp");
				int i=pstmp.executeUpdate();
			
				if(i>0)
				{
					return "Success";
					//PrintWriter out = response.getWriter();  
					//out.write(str);
					//response.sendRedirect("login.jsp");
				//RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
				//rd.include(request, response);
				}
			
			
		} catch (Exception e2) {
			e2.printStackTrace();
			// TODO: handle exception
		}
		return "oops somthing went wrong";
	}

}
