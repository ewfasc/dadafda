package DAO;

import bean.Menber;

public class MenberDAO extends DAO {
	public Menber menber(String id, String pay, String adress)
	throws Exception {
		Menber Menber = null;
		Menber = new Menber();
		Menber.setId(id);
		Menber.setPay(pay);
		Menber.setAdress(adress);
		return Menber;
	}
}