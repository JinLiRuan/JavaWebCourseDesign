package bookstore.bean;

public class UserBean {

	 private String username;
	 private String password;
	 private String gender;
	 private String phone;
	 private String address;
	 
	public UserBean(String username, String password, String gender, String phone, String address) {
		super();
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.phone = phone;
		this.address = address;
	}
	
	public UserBean(String username, String password) {
		this.username = username;
		this.password = password;
	}
		public UserBean() {
		super();
		// TODO Auto-generated constructor stub
	}


		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getGender() {
			return gender;
		}
		public void setSex(String gender) {
			this.gender = gender;
		}
		public String getPhone() {
			return phone;
		}
		public void setPhone(String phone) {
			this.phone = phone;
		}
		public String getAddress() {
			return address;
		}
		public void setAddress(String address) {
			this.address = address;
		}
	
	
	
}
