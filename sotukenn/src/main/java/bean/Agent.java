package bean;

public class Agent implements java.io.Serializable {
	
	private String id;
	private String bank;
	
	public String getId() {
		return id;
	}
	
	public String getBank() {
		return bank;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setBank(String bank) {
		this.bank = bank;
	}
}