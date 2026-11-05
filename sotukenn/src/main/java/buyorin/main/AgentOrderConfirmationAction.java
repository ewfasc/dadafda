package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentOrderConfirmationAction extends Action {
	//アクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String orderid = req.getParameter("orderid");
		session.setAttribute("orderid", orderid);
		req.setAttribute("orderid", orderid);
		req.getRequestDispatcher("agentorderconfirmation.jsp").forward(req, res);
		
	}
}


