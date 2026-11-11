package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgentEditAction extends Action {
	//利用履歴を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "AgentEdit.action");
		req.getRequestDispatcher("agentedit.jsp").forward(req, res);
	}
}


