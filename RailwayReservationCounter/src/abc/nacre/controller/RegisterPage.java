package abc.nacre.controller;

import java.util.ArrayList;
import java.util.Scanner;

import abc.nacre.bean.RegisterBean;
import abc.nacre.service.RailwaysService;
import abc.nacre.service.RailwaysServiceImpl;

public class RegisterPage extends Welcome{
	static Scanner sc = new Scanner(System.in);
	static ArrayList<RegisterBean> register = new ArrayList<RegisterBean>();
	public void register() {
		Validation vl = new Validation();
		boolean emailValid = true;
		boolean passwordValid = true;
		boolean nameValidate = true;
		boolean passValid = true;
		boolean conf_passVallid = true;
		boolean genderValid = true;
		boolean dateValid = true;
		String password = null;
		String conf_password;
		RegisterBean beanReg = new RegisterBean();
		String answer = "";
		while (!answer.equals("n")) {
			try {
				
				String email = "";
				while (emailValid) {
					System.out.print("Enter Email Id: ");
					 email = sc.next();
					boolean e = vl.emailCheck(email);
					if(e == true) {
						beanReg.setEmail_Id(email);
						emailValid = false;
					}
				}
				while (nameValidate) {
					System.out.print("Enter Your Name: ");
					String fname = sc.next();
					sc.nextLine();
					boolean name = vl.nameCheck(fname);
					if(name == true) { 
						beanReg.setUser_Name(fname);
						nameValidate = false; 
					}
				}
				while (passValid ) {
					System.out.print("Enter Password: ");
					password = sc.next();
					boolean c = vl.checkPassword(password);
					if(c == true) {
						beanReg.setPassword(password);
						passValid = false;
					}
				}
				while (conf_passVallid) {
					System.out.print("Enter Confirm Password: ");
					conf_password = sc.next();
					if(password.length() == conf_password.length()) {
						if(conf_password.matches(password)) {
							beanReg.setConf_password(conf_password);
							conf_passVallid = false;
						}
						else  {
							System.out.println();
							System.out.println("password doesnot match");
							System.out.println();
						}
					}
					else  {
						System.out.println();
						System.out.println("password doesnot match");
						System.out.println();
					}
				}
				boolean mValid = true;
				while (mValid) {
					System.out.print("Enter Mobile Number: ");
					String mnum = sc.next();
					boolean mobile = vl.mobileCheck(mnum);
					if(mobile == true) {
						beanReg.setMobile_Numbr(mnum);
						mValid = false;
					}
				}
				while (genderValid) {
					System.out.print("Enter Gender: ");
					String gender = sc.next();
					boolean gvalid = vl.genderCheck(gender);
					if(gvalid == true) {
						beanReg.setGender(gender);
						genderValid = false;
					}
				}
				while (dateValid) {
					System.out.print("Enter Date of Birth: ");
					String dob = sc.next();
					boolean date1 = vl.dateCheck(dob);
					if(date1 == true) {
						beanReg.setDateOfBirth(dob); 
						dateValid = false;
					}
				}
				register.add(beanReg); 
				RailwaysService rserv = new RailwaysServiceImpl();
				rserv.showRegisteredUser(register,beanReg); 
				answer = "n";
			}
			catch (Exception e) {
				System.out.println("input wrong");
				answer = sc.next();
			}
		}
	}
}