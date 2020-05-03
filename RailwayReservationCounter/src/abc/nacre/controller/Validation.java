package abc.nacre.controller;

import java.time.LocalDate;

public class Validation {
	public boolean genderCheck(String gender) {
		if(gender.equalsIgnoreCase("m")||gender.equalsIgnoreCase("male")||gender.equalsIgnoreCase("f")||gender.equalsIgnoreCase("female"))
			return true;
		else {
			System.out.println();
			System.out.println("masdf");
			System.out.println();
		}
		return false;
	}
	public boolean emailCheck(String email) {
		if(email.matches("^[\\w-_\\.+]*[\\w-_\\.]\\@([gmail]+\\.)+[\\w]+[\\w]$"))
			return true;	
		else  {
			System.out.println();
			System.out.println(" [ Wrong Email ");
			System.out.println(" Email As:  abc[123]@gmail.com ]");
			System.out.println();
		}
		return false;
	}
	public boolean checkPassword(String password) {
		int length = password.length();
		int k = 0;
		int space = 0;
		if(password==null||password==" ")
			k=0;
		else {
			if(length >= 8   ) {
				for(int i = 0; i<length; i++) {
					if(password.charAt(i)>=33&&password.charAt(i)<127&&password.charAt(i)!=32)
						k=1;
					else
						k=0;
				}
			}
			else 
				k=0;
		}
		if(k==1) 
			return true;
		else {
			System.out.println("	Invalid Password Selection");
			System.out.println("	Password Must be 8 Caracters");
			System.out.println("	Re-Enter Password ");
		}
		return false;
	}
	public boolean nameCheck(String pname) {
		if(pname.matches("^[\\p{L} . '-]+$")) 
			return true; 
		else { 
			System.out.println();
			System.out.println(" [	Wrong name	] ");
			System.out.println();
		}
		return false;
	}
	public boolean mobileCheck(String mnum) {
		if(mnum.matches("[7-9][0-9]{9}"))
			return true;
		else { 
			System.out.println(" Wrong Mobile Number ");
		}
		return false;
	}


	public boolean addharCheck(String addharNum) {
		if(addharNum.matches("[0-9]{12}")) {
			return true;
		}
		else {
			System.out.println();
			System.out.println(" [ Wrong Addhar Card Number ");
			System.out.println(" Aadhar Card Number As:  123XXXXXXX67 total 12 Digits ]");
			System.out.println();
		}
		return false;
	}
	public boolean sourceCheck(String source) {
		if(source.matches("^[\\p{L} . '-]+$"))  
			return true; 
		else {
			System.out.println();
			System.out.println(" [ Wrong Source ");
			System.out.println(" Source as: Mumbai/mumbai ]");
			System.out.println();
		}
		return false;
	}
	public boolean destinationCheck(String destination) {
		if(destination.matches("^[\\p{L} . '-]+$"))
			return true;
		else {
			System.out.println();
			System.out.println(" [ Wrong Destination ");
			System.out.println(" Destination as: Mumbai/mumbai ]");
			System.out.println();
		}
		return false;
	}
	public boolean dateCheck(String date) {
		if(date.matches("^(3[01]|[12][0-9]|0[1-9])/(1[0-2]|0[1-9])/[0-9]{4}$"))
			return true;
		else {
			System.out.println();
			System.out.println(" [ Wrong Date  ");
			System.out.println(" Date Format as: DD/MM/YYYY ]");
			System.out.println();
		}
		return false;
	}
}
