package DAO;

import bean.Orderdetail;

public class OrderdetailDAO extends DAO {
	public void status(String id,Integer status)
	throws Exception {
		Orderdetail Orderdetail = null;
		Orderdetail = new Orderdetail();
		Orderdetail.setId(id);
		Orderdetail.setStatus(status);
	}
	public void ordermoney(String id,Integer status,Integer money)
	throws Exception {
		Orderdetail Orderdetail = null;
		Orderdetail = new Orderdetail();
		Orderdetail.setId(id);
		Orderdetail.setStatus(status);
		Orderdetail.setMoney(money);
	}
	
}