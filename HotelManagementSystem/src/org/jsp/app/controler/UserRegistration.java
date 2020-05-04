package org.jsp.app.controler;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsp.app.model.RegisterConnection;
import org.jsp.app.model.RegisterDao;

@WebServlet("/view/UserRegistration")
public class UserRegistration extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside post");
		String user_id=request.getParameter("userid");
		String password=request.getParameter("pwd1");
		String rp=request.getParameter("rpwd");
		String role=request.getParameter("role");
		String user_name=request.getParameter("uname");
		String mobile_no=request.getParameter("mnmbr");
		String phone=request.getParameter("phone");
		String address=request.getParameter("addr");
		String email=request.getParameter("email");
		System.out.println(user_id+" "+password+" "+rp+" "+role+" "+user_name+" "+mobile_no+" "+phone+" "+address+" "+" "+email);
		RegisterConnection rc=new RegisterConnection();
		rc.setUser_id(user_id);
		rc.setPassword(password);
		rc.setRole(role);
		rc.setUser_name(user_name);
		rc.setMobile_no(mobile_no);
		rc.setPhone(phone);
		rc.setAddress(address);
		rc.setEmail(email);
		RegisterDao rdao=new RegisterDao();
		String userRegistered= rdao.registerUser(rc);
		if(userRegistered.equals("Success"))
		{
			RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
			rd.include(request, response);
		}
		else
		{
			request.setAttribute("errMessage", userRegistered);
			RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
			rd.include(request, response);
		}
		
	}

}
