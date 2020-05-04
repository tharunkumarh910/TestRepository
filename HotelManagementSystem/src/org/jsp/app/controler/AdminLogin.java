package org.jsp.app.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/view/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("inside post");

		String admin_id=request.getParameter("Adminid");
		String password=request.getParameter("pwd1");
		System.out.println(admin_id+" "+password);
		if(admin_id.equals("admin") && password.equals("admin"))
		{
			response.sendRedirect("homepage.jsp");
			
		}
		else
		{
			response.sendRedirect("adminlogin.jsp");
		
		}
		
		/*LoginConnection lc=new LoginConnection();
		lc.setUser_id(admin_id);
		lc.setPassword(password);
		
		if(LoginDao.validate(admin_id,password))
		{
			RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
			rd.include(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
			rd.include(request, response);
		}*/
	}

}
