package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentConfirmationDisplayAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
		res.setHeader("Parama", "no-cache");
		res.setDateHeader("Expires", 0);
		
		HttpSession session = req.getSession(false);
		
		if (session == null ||
			session.getAttribute("user") == null ||
			session.getAttribute("agent") == null) {
			res.sendRedirect("AgentRegister.action");
			return;
			}
		
		
		req.getRequestDispatcher("agentConfirmation.jsp").forward(req, res);
	}
}


