package buyorin.main;

import DAO.OrderdetailDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;


public class AgentOrderStatusConfirmationAction extends Action {
	//代行者依頼金額を保存するアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		OrderdetailDAO dao = new OrderdetailDAO();
		String orderid = (String) session.getAttribute("orderid");
		Integer status = Integer.parseInt(req.getParameter("status"));	
		if(status.equals(3)) {
			Integer money = Integer.parseInt(req.getParameter("money"));
			dao.ordermoney(orderid,status,money);
			session.setAttribute("status",status);
			session.setAttribute("money",money );
			req.setAttribute("status",status);
			req.setAttribute("money", money);
			req.getRequestDispatcher("agentorderstatusconfirmation.jsp").forward(req, res);
		}else
		dao.status(orderid, status);
		req.getRequestDispatcher("agentorderstatus.jsp").forward(req, res);
		}
	}

