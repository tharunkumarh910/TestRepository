package abc.nacre.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.Scanner;

import abc.nacre.bean.TicketBean;
import abc.nacre.service.RailwaysService;
import abc.nacre.service.RailwaysServiceImpl;

public class Welcome {
	static Scanner sc = new Scanner(System.in);
	static int ch;
	public static void main(String[] args) {
		TicketPage tp = new TicketPage();
		LoginPage lp = new LoginPage();
		RegisterPage rp = new RegisterPage();
		String answer = "";
		System.out.println("\t\tWelcome To The Railway Reservation Counter AT YOUR SERVICE");
		while (!answer.equals("y")) {
			try {
				System.out.println("\n1. Register As A User\n2. Login As A User\n3. Exit\n\nEnter Your Choice: ");
				ch = sc.nextInt();
				switch (ch) {
				case 1:
					System.out.println("Register Your Details:");
					rp.register();
					break;
				case 2:
					System.out.println("Login Your Account");
					int i = lp.login();
					while (!answer.equals("n")&&i == 1) {
						try {
						System.out.println("Enter Your Choice:\n1. Book Ticket\n2. Cancel Ticket\n3. Reservation Chart\n4. Display Unbooked Tickets\n5. Logout ");
						ch = sc.nextInt();
						switch (ch) {
						case 1:
							System.out.println("Book Ticket\n_________________________\n");
							tp.ticketBook();
							break;
						case 2:
							System.out.println("Cancel Your Ticket Here: ");
							tp.cancel();
							break;
						case 3:
							System.out.println("Reservation Chart:- \n");
							tp.reservation();
							break;
						case 4:
							System.out.println("Displaying Unbooked Tickets: ");
							tp.displayUnbookedTickets();
							break;
						case 5:
							System.out.println("Displaying Booked Tickets: ");
							tp.booked();
						case 6:
							System.out.println("Thank You For Visiting Us. Visit Again...!!!");
							System.exit(0);
							//i=0;
							break;
						default:
							System.out.println("Sorry Wrong Input...!!!");
							break;
						}
					}
					catch (Exception e) {
						System.out.println("input must integer from 1 to 5 ");
						answer = sc.next();
					}
					}
					break;
				case 3:
					System.out.println("Exit");
					System.out.println("Thank You For Visiting Us. Visit Again...!!!");
					System.exit(0);
					break;
				default:
					System.out.println("Sorry Wrong Input...!!!");
					break;
				}
			}		
			catch (Exception e) {
				System.out.println("input must integer from 1 to 3 ");
				answer = sc.nextLine(); 
				
			}
		}
	}
}