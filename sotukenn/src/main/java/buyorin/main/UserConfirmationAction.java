package buyorin.main;

import bean.Menber;
import bean.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserConfirmationAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		String name = "";
		String password = "";
		String tell = "";
		String mail = "";
		String pay = "";
		String address = "";
		
		name = req.getParameter("name");
		password = req.getParameter("password");
		tell = req.getParameter("tell");
		mail = req.getParameter("email");
		pay = req.getParameter("pay");
		address = req.getParameter("address");
		
		String id = "1234";
		
		User user = new User();
		user.setId(id);
		user.setUsername(name);
		user.setPassword(password);
		user.setMail(mail);
		user.setTell(tell);
		
		Menber menber = new Menber();
		menber.setId(id);
		menber.setPay(pay);
		menber.setAddress(address);
		
		HttpSession session = req.getSession();
		session.setAttribute("user", user);
		session.setAttribute("menber", menber);
		
		req.setAttribute("link", "UserConfirmation.action");
		req.getRequestDispatcher("userConfirmation.jsp").forward(req, res);
	}
}


