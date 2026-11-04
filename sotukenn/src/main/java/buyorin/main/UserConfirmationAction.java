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
		
		String name = req.getParameter("name");
		String password = req.getParameter("password");
		String tell = req.getParameter("tell");
		String mail = req.getParameter("email");
		String pay = req.getParameter("pay");
		String address = req.getParameter("address");
		
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
		
		res.sendRedirect("UserConfirmationDisplay.action");
	}
}


