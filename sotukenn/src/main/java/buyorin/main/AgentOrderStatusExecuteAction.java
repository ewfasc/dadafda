package buyorin.main;

import DAO.OrderdetailDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;


public class AgentOrderStatusExecuteAction extends Action {
	//代行者依頼金額を保存するアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String orderid = (String) session.getAttribute("orderid");
		Integer status = (Integer) session.getAttribute("status");
		Integer money = (Integer) session.getAttribute("money");
		OrderdetailDAO dao = new OrderdetailDAO();
		dao.ordermoney(orderid,status,money);
		session.setAttribute("status",status);
		session.setAttribute("money",money );
		req.setAttribute("success",true);
		
		res.sendRedirect("AgentOrderStatusComplete.action");
	}
}

