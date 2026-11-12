package DAO;

import bean.Member;

public class MemberDAO extends DAO {
	public Member menber(String id, String pay, String address)
	throws Exception {
		Member Member = null;
		Member = new Member();
		Member.setId(id);
		Member.setPay(pay);
		Member.setAddress(address);
		return Member;
	}
}