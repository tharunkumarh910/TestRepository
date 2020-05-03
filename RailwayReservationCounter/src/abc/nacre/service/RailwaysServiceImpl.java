package abc.nacre.service;

import java.util.ArrayList;
import java.util.Iterator;

import abc.nacre.bean.RegisterBean;
import abc.nacre.bean.TicketBean;

public class RailwaysServiceImpl implements RailwaysService {

	@Override
	public void showRegisteredUser(ArrayList<RegisterBean> register, RegisterBean beanReg) {
		System.out.println("SUCCESSFULL...!!!" + "	" + beanReg.getUser_Name());
		Iterator itr = register.iterator();
		int i = 0;
		while (itr.hasNext()) {
			RegisterBean register1 = (RegisterBean) itr.next();
			System.out.println(register1);
		}
	}

	@Override
	public int login(ArrayList<RegisterBean> register, String email, String password) {
		int fl = 0;
		int count = -1;
		if (register.isEmpty()) {
			System.out.println("User Not Exist First register ...!!!");
			return 0;
		} 
		else {
			for (int i = 0; i < register.size(); i++) {
				count++;
				if (email.equals(((RegisterBean) register.get(i)).getEmail_Id())&& password.equals(((RegisterBean) register.get(i)).getPassword())) {
					fl = 1;
					break;
				}
			}
			if (fl == 1) {
				System.out.println("SUCCESSFULL...!!!" + "	" + ((RegisterBean) register.get(count)).getEmail_Id());
				return 1;
			} 
			else {
				System.out.println("email or password does not match...!!!");
				return 0;
			}
		}
	}

	@Override
	public long generateTicketNumber() {
		long ticketNumber = 0;
		return ticketNumber = (long) ((Math.random() * 9000000000L) + 1000000000);
	}

	@Override
	public void ticketDetails(ArrayList user_Ticket) {
		Iterator itr = user_Ticket.iterator();
		int i = 0;
		while (itr.hasNext()) {
			TicketBean bean = (TicketBean) itr.next();
			System.out.println(bean);
		}
	}

	@Override
	public void reservationChart(ArrayList user_Ticket, Long pnr) {
		System.out.println("Reservation Chart:- \n");
		if(pnr == null) {
			System.out.println();
			System.out.println("There Are No Reservations Yet");
			System.out.println();
		}
		else {
			
			System.out.println("Train name" + "\t\t" +"Traveller Name" + "\t\t" + "PNR No" + "\t\t"+"Travelling Date" + "\t\t" + "Source Station" + "\t\t" + "Destination Station");
			Iterator itr = user_Ticket.iterator();
			while (itr.hasNext()) {
				TicketBean bean = (TicketBean) itr.next();
				System.out.println(bean.getPassenger_Mobile_Number() + "\t\t" + bean.getPassenger_Name()+"\t\t"+bean.getPnr_Number()+"\t\t"+bean.getDate()+ "\t\t" + bean.getSource() + "\t\t" + bean.getDestination());
				System.out.println();
			}
		}
	}
	
	@Override
	public int cancelTicket(long pnrNumber, ArrayList user_Ticket) {
		for (int i = 0; i < user_Ticket.size(); i++) {
			if (pnrNumber == ((TicketBean) user_Ticket.get(i)).getPnr_Number()) {
				user_Ticket.remove(user_Ticket.get(i));
				return 1;
			} 
			else {
				return 0;
			}
		}
		return 0;
	}

	@Override
	public void totalTickets(int tot, int count) {
		int total = tot - count;
		System.out.println();
		System.out.println("Remaining Tickets: ");
		System.out.printf(" %d/%d", count, tot);
		System.out.println();
	}
}