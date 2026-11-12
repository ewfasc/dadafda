package buyorin.main;

import bean.Member;
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
		
		String maskedpass = "●".repeat(password.length());
		
		String id = "1234";
		
		User user = new User();
		user.setId(id);
		user.setUsername(name);
		user.setPassword(password);
		user.setMail(mail);
		user.setTell(tell);
		
		Member member = new Member();
		member.setId(id);
		member.setPay(pay);
		member.setAddress(address);
		
		HttpSession session = req.getSession();
		session.setAttribute("user", user);
		session.setAttribute("member", member);
		session.setAttribute("maskedpass", maskedpass);
		
		res.sendRedirect("UserConfirmationDisplay.action");
	}
}


