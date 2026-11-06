package buyorin;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgentLoginAction extends Action {
	//ログイン画面にアクセスするアクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.getRequestDispatcher("agentlogin.jsp").forward(req, res);
	}
}


