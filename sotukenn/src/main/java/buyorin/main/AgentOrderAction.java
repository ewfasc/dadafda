package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgentOrderAction extends Action {
	//代行者依頼一覧を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "AgentOrderExecute.action");
		req.getRequestDispatcher("agentorder.jsp").forward(req, res);
	}
}

