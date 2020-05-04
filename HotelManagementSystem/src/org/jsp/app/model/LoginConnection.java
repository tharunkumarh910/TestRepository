package org.jsp.app.model;

public class LoginConnection {
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String user_id;
	private String password;
	public boolean valid;
	  public boolean isValid() {
	         return valid;
		}

	      public void setValid(boolean newValid) {
	         valid = newValid;
		}	
}
