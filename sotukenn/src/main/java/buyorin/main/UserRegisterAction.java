package buyorin.main;

import bean.Menber;
import bean.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserRegisterAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		User user = new User();
		Menber menber = new Menber();
		
		HttpSession session = req.getSession();
		session.getAttribute("user");
		session.getAttribute("menber");
		
		req.setAttribute("link", "UserRegister.action");
		req.getRequestDispatcher("userRegister.jsp").forward(req, res);
	}
}


