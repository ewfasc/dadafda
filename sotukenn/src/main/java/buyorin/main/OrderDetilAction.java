package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class OrderDetilAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String memo = req.getParameter("memo");
		String money = req.getParameter("money");
		session.setAttribute(memo, memo);
		session.setAttribute(money,money );		
		req.setAttribute("link", "OrderExecute.action");
		req.getRequestDispatcher("orderconfirmation.jsp").forward(req, res);
	}
}


