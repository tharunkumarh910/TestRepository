package org.jsp.app.controler;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.jsp.app.model.LoginConnection;
import org.jsp.app.model.LoginDao;
import org.jsp.app.model.RegisterDao;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/view/UserLogin")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		System.out.println("inside post");
		String user_id=request.getParameter("userid");
		String password=request.getParameter("pwd1");
		System.out.println(user_id+" "+password);
		
		
		LoginConnection lc=new LoginConnection();
		lc.setUser_id(user_id);
		lc.setPassword(password);
		
		if(LoginDao.validate(user_id,password))
		{
			RequestDispatcher rd=request.getRequestDispatcher("registration.jsp");
			rd.include(request, response);
		}
		else
		{
			RequestDispatcher rd=request.getRequestDispatcher("userlogin.jsp");
			rd.include(request, response);
		}
}
}