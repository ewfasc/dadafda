package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgentDeleteAction extends Action {
	//削除確認画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "AgentDelete.action");
		req.getRequestDispatcher("agentdelete.jsp").forward(req, res);
	}
}


