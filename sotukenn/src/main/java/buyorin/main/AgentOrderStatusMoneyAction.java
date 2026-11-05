package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentOrderStatusMoneyAction extends Action {
	//代行者依頼金額を保存するアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String orderid = (String) session.getAttribute("orderid");
		String money = req.getParameter("money");
		session.setAttribute("mpney",money );
		Integer ordermoney = (Integer) money;
		req.setAttribute("money", money);
		req.getRequestDispatcher("agentorderstatus.jsp").forward(req, res);
	}
}

