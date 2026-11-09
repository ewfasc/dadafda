package bean;

public class Orderdetail implements java.io.Serializable {
	
	private String id;
	private Integer status;
	private Integer money;
	
	
	public String getid() {
		return id;
	}
	
	public Integer getstatus() {
		return status;
	}
	
	public Integer getmoney() {
		return money;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setStatus(Integer status) {
		this.status=status;
	}
	
	public void setMoney(Integer money) {
		this.money = money;
	}
}