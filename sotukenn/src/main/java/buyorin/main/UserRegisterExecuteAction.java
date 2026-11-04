package buyorin.main;

import bean.Menber;
import bean.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserRegisterExecuteAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		Menber menber = (Menber)session.getAttribute("menber");
		
		session.removeAttribute("user");
		session.removeAttribute("member");
		
		res.sendRedirect("UserCompletion.action");
	}
}


