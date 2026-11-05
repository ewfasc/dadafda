package DAO;

import bean.Orderdetail;

public class OrderdetailDAO extends DAO {
	public void order(String id,Integer money)
	throws Exception {
		Orderdetail Orderdetail = null;
		Orderdetail = new Orderdetail();
		Orderdetail.setId(id);
		Orderdetail.setMoney(money);
	}
}