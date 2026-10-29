package bean;

public class Contact implements java.io.Serializable {
	
	private String id;
	private String content;
	
	public String getid() {
		return id;
	}
	
	public String getcontent() {
		return content;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	
	public void setContent(String content) {
		this.content = content;
	}
}