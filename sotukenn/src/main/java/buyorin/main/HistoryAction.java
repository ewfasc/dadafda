package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class HistoryAction extends Action {
	//利用履歴を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "Top.action");
		req.getRequestDispatcher("History.jsp").forward(req, res);
	}
}


