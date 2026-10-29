package bean;

public class Order implements java.io.Serializable {
	
	private String id;
	private String memo;
	private Integer money;
	
	public String getid() {
		return id;
	}
	
	public String getmemo() {
		return memo;
	}
	
	public Integer getmoney() {
		return money;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setMemo(String memo) {
		this.memo = memo;
	}
	
	public void setMoney(Integer money) {
		this.money = money;
	}
}