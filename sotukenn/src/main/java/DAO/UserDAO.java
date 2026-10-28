package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import bean.User;

public class UserDAO extends DAO {
	public User login(String id, String password)
	throws Exception {
		User User = null;
		
		PreparedStatement st;
		st.setString(1, id);
		st.setString(2, password);
		ResultSet rs = st.executeQuery();
		
		while (rs.next()) {
			User = new User();
			User.setId(id);
			User.setPassword(password);
		}
		
		return User;
	}
}