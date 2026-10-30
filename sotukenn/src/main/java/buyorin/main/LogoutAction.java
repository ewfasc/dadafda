package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class LogoutAction extends Action {
	//ログアウトするアクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.getRequestDispatcher("Login.action").forward(req, res);
	}
}