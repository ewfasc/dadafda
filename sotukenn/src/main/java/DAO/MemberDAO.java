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
	
//	public Member login(String id, String password)
//	throws Exception {
//		Member Member = null;
//		Connection con = getConnection();
//		
//		PreparedStatement st;
//		st = con.prepareStatement("select * from where id=? and password=?");
//		
//		st.setString(1,id);
//		st.setString(2,password);
//		ResultSet rs = st.executeQuery();
//		
//		while (rs.next()) {
//			Member = new Member();
//			Member.setId(rs.getString("id"));
//			Member.setPassword(rs.getString("password"));
//			Member.setUsername(rs.getString("username"));
//			Member.setMail(rs.getString("mail"));
//			Member.setTell(rs.getString("tell"));
//			Member.setAddress(rs.getString("address"));
//			Member.setPay(rs.getString("pay"));
//		}
//		
//		st.close();
//		con.close();
//		
//		return Member;
//		
//	}
//	
//	public boolean save(Member menber)
//	throw Exception{
//		
//	}
}