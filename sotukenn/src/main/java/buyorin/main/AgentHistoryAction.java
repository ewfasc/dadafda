package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgentHistoryAction extends Action {
	//代行者履歴を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.getRequestDispatcher("agenthistory.jsp").forward(req, res);
	}
}

