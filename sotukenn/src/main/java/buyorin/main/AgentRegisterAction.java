package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentRegisterAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		HttpSession session = req.getSession();
		
		if (session != null) {
			session.getAttribute("user");
			session.getAttribute("agent");
		}
		
		res.setHeader("Cache-Control", "no-store");
		req.setAttribute("link", "AgentRegister.action");
		req.getRequestDispatcher("agentRegister.jsp").forward(req, res);
	}
}


