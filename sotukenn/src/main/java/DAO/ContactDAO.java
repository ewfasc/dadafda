package DAO;

import bean.Contact;

public class ContactDAO extends DAO {
	public Contact contact(String id, String content)
	throws Exception {
		Contact Contact = null;
		Contact = new Contact();
		Contact.setId(id);
		Contact.setContent(content);
		return Contact;
	}
}