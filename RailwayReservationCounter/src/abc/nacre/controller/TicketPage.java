package abc.nacre.controller;

import java.util.ArrayList;
import java.util.Scanner;

import abc.nacre.bean.TicketBean;
import abc.nacre.service.RailwaysService;
import abc.nacre.service.RailwaysServiceImpl;

public class TicketPage extends Welcome {
	ArrayList user_Ticket = new ArrayList();
	Long pnr = null;
	int tot = 60;
	int count = 0;
	public void ticketBook() {
		Validation vl = new Validation();
		RailwaysService ticketserv = new RailwaysServiceImpl();
		TicketBean tbean = new TicketBean();
		String answer = "";
		while (!answer.equals("n")) {
			try {
				boolean nameValidate = true; 
				boolean mValid = true;
				boolean emailValid = true;
				boolean addharValid = true;
				boolean sValid = true;
				boolean dValid = true;
				boolean genderValid = true;
				boolean dateValid = true;
			  while (nameValidate) {
				  System.out.print("Enter Passenger Name: ");
				  String pname = sc.next(); 
				  sc.nextLine();
				  boolean name = vl.nameCheck(pname);
					 if(name == true) { 
						 tbean.setPassenger_Name(pname);
						 nameValidate = false; 
					 }
			  	}
				while (mValid) {
					System.out.print("Enter Passenger Mobile Number: ");
					String mnum = sc.next();
					boolean mobile = vl.mobileCheck(mnum);
					if(mobile == true) {
						tbean.setPassenger_Mobile_Number(mnum);
						mValid = false;
					}
				}
				while (emailValid) {
					System.out.print("Enter Email Id: ");
					String email = sc.next();
					boolean e = vl.emailCheck(email);
					if(e == true) {
						tbean.setPassenger_Email_Id(email);
						emailValid = false;
					}
				}
				while (addharValid) {
					System.out.print("Enter Aadhar Card Number: ");
					String addharNum = sc.next();
					boolean a = vl.addharCheck(addharNum);
					if(a == true) {
						tbean.setAdharcard_Number(addharNum);
						addharValid = false;
					}
				}
				while (sValid) {
					System.out.print("Enter Source: ");
					String source = sc.next();
					sc.nextLine();
					boolean s = vl.sourceCheck(source);
					if(s == true) {
						tbean.setSource(source);
						sValid = false;
					}
				}
				while (dValid) {
					System.out.print("Enter Destination: ");
					String destination = sc.next();
					sc.nextLine();
					boolean d = vl.destinationCheck(destination);
					if(d == true) {
						tbean.setDestination(destination);
						dValid = false;
					}
				}
				while (genderValid) {
					System.out.print("Enter Gender: ");
					String gender = sc.next();
					boolean gvalid = vl.genderCheck(gender);
					if(gvalid == true) {
						tbean.setGender(gender);
						genderValid = false;
					}
				}
				while (dateValid) {
					System.out.print("Enter Date: ");
					String journey = sc.next();
					boolean date1 = vl.dateCheck(journey);
					if(date1 == true) {
						tbean.setDate(journey); 
						dateValid = false;
					}
				}
			pnr = ticketserv.generateTicketNumber();
			tbean.setPnr_Number(pnr);
			user_Ticket.add(tbean);
			System.out.println("You successfully Booked Your Ticket\nYour PNR No is: "+pnr);
			count++;
			tot--;
			answer = "n";
		}
			catch (Exception e) {
				System.out.println("input wrong");
				answer = sc.next();
			}
		}
	}
	public void cancel() {
		RailwaysService cancelTicketservice = new RailwaysServiceImpl();
		long pnrNumber;
		String answer = "";
		while (!answer.equals("n")) {
			try {
				System.out.println("Enter PNR Number: ");
				pnrNumber = sc.nextLong();
				int can = cancelTicketservice.cancelTicket(pnrNumber,user_Ticket);
				if(can == 1) {
					System.out.println("Removed:");
					System.out.println(user_Ticket);
					tot ++;
					count --;
				}
				else {
					System.out.println("No Such Details in our List	please enter valid pnr number");
				}
				answer = "n";
			}
			catch (Exception e) {
				System.out.println("Invalid PNR Number It Must Be Numbers");
				answer = sc.next();
			}
		}
	}
	public void reservation() { 
		RailwaysService reservation = new RailwaysServiceImpl();
		reservation.reservationChart(user_Ticket,pnr);
	  }
	public void displayUnbookedTickets() {
		System.out.printf("Unbooked Tickets: %d",tot);
		System.out.println();
	}
	public void booked() {
		RailwaysService available = new RailwaysServiceImpl();
		available.totalTickets(tot, count);
		
	}
}
	
