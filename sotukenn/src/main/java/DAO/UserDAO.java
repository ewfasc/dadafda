package DAO;

import bean.User;

public class UserDAO extends DAO {
	public User login(String id, String password)
	throws Exception {
		User User = null;
		
		User = new User();
		User.setId(id);
		User.setPassword(password);
		
		return User;
	}
}