package bean;

public class Member implements java.io.Serializable {
	
	private String id;
	private String password;
	private String username;
	private String mail;
	private String tell;
	private String pay;
	private String address;
	
	public String getId() {
		return id;
	}
	
	public String getPassword() {
		return password;
	}
	
	public String getUsername() {
		return username;
	}
	
	public String getMail() {
		return mail;
	}
	
	public String getTell() {
		return tell;
	}
	
	public String getPay() {
		return pay;
	}
	
	public String getAddress() {
		return address;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public void setTell(String tell) {
		this.tell = tell;
	}
	
	public void setPay(String pay) {
		this.pay = pay;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
}