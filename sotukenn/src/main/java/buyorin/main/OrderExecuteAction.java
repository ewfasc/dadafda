package buyorin.main;

import DAO.OrderDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class OrderExecuteAction extends Action {
	//お問い合わせするアクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String memo = (String) session.getAttribute("memo");
		Integer money = (Integer) session.getAttribute("momey");
		try {
        	OrderDAO dao = new OrderDAO();
            dao.order(id, memo, money);
            req.setAttribute("link", "Status.action");
    		req.getRequestDispatcher("OrderComplete.action").forward(req, res);
        } catch (Exception e) {
          
            e.printStackTrace();

           
            req.getRequestDispatcher("error.jsp").forward(req, res);

        
        }
		
	}
}


