package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgentOrderStatusCompleteAction extends Action {
	//代行者依頼情報を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.getRequestDispatcher("agentorderstatuscompletion.jsp").forward(req, res);
	}
}

