package bean;

public class Menber implements java.io.Serializable {
	
	private String id;
	private String pay;
	private String address;
	
	public String getId() {
		return id;
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
	
	public void setPay(String pay) {
		this.pay = pay;
	}
	
	public void setAddress(String address) {
		this.address = address;
	}
}