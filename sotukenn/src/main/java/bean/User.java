package bean;

public class User implements java.io.Serializable {
	
	private String id;
	private String password;
	private String username;
	private String mail;
	private String tell;
	
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
}