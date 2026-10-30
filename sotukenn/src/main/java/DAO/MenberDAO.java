package DAO;

import bean.Menber;

public class MenberDAO extends DAO {
	public Menber menber(String id, String pay, String address)
	throws Exception {
		Menber Menber = null;
		Menber = new Menber();
		Menber.setId(id);
		Menber.setPay(pay);
		Menber.setAddress(address);
		return Menber;
	}
}