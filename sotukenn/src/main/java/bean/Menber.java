package bean;

public class Menber implements java.io.Serializable {
	
	private String id;
	private String pay;
	private String adress;
	
	public String getId() {
		return id;
	}
	
	public String getPay() {
		return pay;
	}
	
	public String getAdress() {
		return adress;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setPay(String pay) {
		this.pay = pay;
	}
	
	public void setAdress(String adress) {
		this.adress = adress;
	}
}