package buyorin;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class LoginAction extends Action {
	//ログイン画面にアクセスするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "main/LoginExecute.action");
		req.setAttribute("userno", 1);
		req.getRequestDispatcher("login.jsp").forward(req, res);
	}
}

