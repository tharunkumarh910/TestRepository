package abc.nacre.controller;

import abc.nacre.service.RailwaysService;
import abc.nacre.service.RailwaysServiceImpl;

public class LoginPage extends RegisterPage{
	public int login() {
		System.out.print("Enter Email Id: ");
		String email = sc.next();
		System.out.print("Enter Password: ");
		String password = sc.next();
		RailwaysService lserv = new RailwaysServiceImpl();
		return lserv.login(register, email,password);
	}
}

