package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class UserRegisterConfirmationAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "UserRegisterConfirmation.action");
		req.getRequestDispatcher("userRegisterConfirmation.jsp").forward(req, res);
	}
}


