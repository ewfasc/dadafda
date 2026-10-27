package bean;

public class User implements java.io.Serializable {
	
	private String id;
	private String password;
	
	public String getid() {
		return id;
	}
	
	public String getpassword() {
		return password;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
}