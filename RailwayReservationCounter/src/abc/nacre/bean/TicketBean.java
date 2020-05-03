package abc.nacre.bean;

public class TicketBean {
		private long pnr_Number;
		private String passenger_Name;
		private String passenger_Mobile_Number;
		private String passenger_Email_Id;
		private String adharcard_Number;
		private String source;
		private String destination;
		private String gender;
		private String date;
		public long getPnr_Number() {
			return pnr_Number;
		}
		public void setPnr_Number(long pnr_Number) {
			this.pnr_Number = pnr_Number;
		}
		public String getPassenger_Name() {
			return passenger_Name;
		}
		public void setPassenger_Name(String passenger_Name) {
			this.passenger_Name = passenger_Name;
		}
		public String getPassenger_Mobile_Number() {
			return passenger_Mobile_Number;
		}
		public void setPassenger_Mobile_Number(String passenger_Mobile_Number) {
			this.passenger_Mobile_Number = passenger_Mobile_Number;
		}
		public String getPassenger_Email_Id() {
			return passenger_Email_Id;
		}
		public void setPassenger_Email_Id(String passenger_Email_Id) {
			this.passenger_Email_Id = passenger_Email_Id;
		}
		public String getAdharcard_Number() {
			return adharcard_Number;
		}
		public void setAdharcard_Number(String adharcard_Number) {
			this.adharcard_Number = adharcard_Number;
		}
		public String getSource() {
			return source;
		}
		public void setSource(String source) {
			this.source = source;
		}
		public String getDestination() {
			return destination;
		}
		public void setDestination(String destination) {
			this.destination = destination;
		}
		public String getGender() {
			return gender;
		}
		public void setGender(String gender) {
			this.gender = gender;
		}
		public String getDate() {
			return date;
		}
		public void setDate(String date) {
			this.date = date;
		}
		@Override
		public String toString() {
			return "pnr_Number=" + pnr_Number + ", passenger_Name=" + passenger_Name
					+ ", passenger_Mobile_Number=" + passenger_Mobile_Number + ", passenger_Email_Id=" + passenger_Email_Id
					+ ", adharcard_Number=" + adharcard_Number + ", source=" + source + ", destination=" + destination
					+ ", gender=" + gender + ", date=" + date ;
		}
}