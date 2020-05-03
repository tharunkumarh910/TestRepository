package abc.nacre.service;

import java.util.ArrayList;

import abc.nacre.bean.RegisterBean;

public interface RailwaysService {

	void showRegisteredUser(ArrayList<RegisterBean> register, RegisterBean beanReg);

	int login(ArrayList<RegisterBean> register, String email, String password);

	long generateTicketNumber();

	void ticketDetails(ArrayList user_Ticket);

	void reservationChart(ArrayList user_Ticket, Long pnr);

	int cancelTicket(long pnrNumber, ArrayList user_Ticket);

	void totalTickets(int tot, int count);


}
