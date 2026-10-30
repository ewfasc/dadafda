package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class AgenttopAction extends Action {
	//代行者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.getRequestDispatcher("agenttop.jsp").forward(req, res);
	}
}

