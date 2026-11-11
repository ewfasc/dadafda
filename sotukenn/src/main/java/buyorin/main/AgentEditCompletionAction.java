package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgentEditCompletionAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		res.setHeader("Cache-Control", "no-store");
		req.setAttribute("link", "AgentEditCompletion.action");
		req.getRequestDispatcher("agenteditcompletion.jsp").forward(req, res);
	}
}


