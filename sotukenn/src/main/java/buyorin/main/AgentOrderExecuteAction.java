package buyorin.main;

import DAO.OrderDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentOrderExecuteAction extends Action {
	//アクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String orderid = (String) session.getAttribute("orderid");
		try {
        	OrderDAO dao = new OrderDAO();
            dao.get(orderid);
            res.sendRedirect("AgentOrderList.action");
        } catch (Exception e) {
          
            e.printStackTrace();

           
            req.getRequestDispatcher("error.jsp").forward(req, res);

        
        }
		
	}
}


