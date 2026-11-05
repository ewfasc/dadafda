package bean;

public class Orderdetail implements java.io.Serializable {
	
	private String id;
	private Integer money;
	
	public String getid() {
		return id;
	}
	
	public Integer getmoney() {
		return money;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setMoney(Integer money) {
		this.money = money;
	}
}