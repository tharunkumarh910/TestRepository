package org.jsp.app.model;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;

public class LoginDao {
	
		public static boolean validate(String user_id, String password) {
			// TODO Auto-generated method stub
			boolean status=false;
			String msg="";
		try {
			System.out.println("wertyi");
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=shivababa");
			System.out.println("asdfghj");
			PreparedStatement ps=conn.prepareStatement("select user_id,password from hotelmanagementregistration.users where user_id=? and password=?");
			System.out.println("zxcbnm");
				System.out.println("wertyi");
				ps.setString(1,user_id);
				ps.setString(2,password);
				
				ResultSet rs=ps.executeQuery();
				while(rs.next())
				{
					msg="hello" + user_id+"your login failed";
				System.out.println("sssfule");
					return true;
				}
				if(!rs.next())
				{
					msg="hello" + user_id+"your login failed";
				}
				//RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
				//rd.include(request, response);
				//response.sendRedirect("login.jsp");
			
				
					//PrintWriter out = response.getWriter();  
					//out.write(str);
					//response.sendRedirect("login.jsp");
				//RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
				//rd.include(request, response);
			
			
		} catch (Exception e2) {
			e2.printStackTrace();
			// TODO: handle exception
		}
		return status;
	}
	
}


