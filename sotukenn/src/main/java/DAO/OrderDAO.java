package DAO;

import bean.Order;

public class OrderDAO extends DAO {
	public void order(String id, String memo, Integer money)
	throws Exception {
		Order Order = null;
		Order = new Order();
		Order.setId(id);
		Order.setMemo(memo);
		Order.setMoney(money);
	}
}