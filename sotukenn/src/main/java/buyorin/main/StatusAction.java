package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class StatusAction extends Action {
	//状況確認画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "Top.action");
		req.getRequestDispatcher("status.jsp").forward(req, res);
	}
}


