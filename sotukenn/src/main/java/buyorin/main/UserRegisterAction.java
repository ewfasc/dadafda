package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserRegisterAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		HttpSession session = req.getSession(false);
		
		if (session != null) {
			req.setAttribute("user",session.getAttribute("user"));
			req.setAttribute("menber", session.getAttribute("menber"));
			}
		
		res.setHeader("Cache-Control", "no-store");
		req.setAttribute("link", "UserRegister.action");
		req.getRequestDispatcher("userRegister.jsp").forward(req, res);
	}
}


