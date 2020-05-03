package abc.nacre.bean;

	public class RegisterBean {
		private String email_Id;
		private String user_Name;
		private String password;
		private String conf_password;
		private String mobile_Numbr;
		private String gender;
		private String dob;

		public String getEmail_Id() {
			return email_Id;
		}

		public void setEmail_Id(String email_Id) {
			this.email_Id = email_Id;
		}

		public String getUser_Name() {
			return user_Name;
		}

		public void setUser_Name(String user_Name) {
			this.user_Name = user_Name;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getConf_password() {
			return conf_password;
		}

		public void setConf_password(String conf_password) {
			this.conf_password = conf_password;
		}

		public String getMobile_Numbr() {
			return mobile_Numbr;
		}

		public void setMobile_Numbr(String mobile_Numbr) {
			this.mobile_Numbr = mobile_Numbr;
		}

		public String getGender() {
			return gender;
		}

		public void setGender(String gender) {
			this.gender = gender;
		}

		public String getDateOfBirth() {
			return dob;
		}

		public void setDateOfBirth(String dob) {
			this.dob = dob;
			
		}
		@Override
		public String toString() {
			return "email_Id=" + email_Id + ", user_Name=" + user_Name + ", password=" + password
					+ ", conf_password=" + conf_password + ", mobile_Numbr=" + mobile_Numbr + ", gender=" + gender
					+ ", DOB=" + dob ;
		}
	}
