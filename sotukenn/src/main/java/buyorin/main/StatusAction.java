package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class StatusAction extends Action {
	//状況確認画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		req.setAttribute("link", "Top.action");
		String memo = (String) session.getAttribute("memo");
		req.setAttribute("memo", memo);
		req.getRequestDispatcher("status.jsp").forward(req, res);
	}
}


