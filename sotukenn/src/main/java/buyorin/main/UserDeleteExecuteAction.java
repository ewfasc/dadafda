package buyorin.main;

import DAO.UserDAO;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserDeleteExecuteAction extends Action {
	//お問い合わせするアクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		try {
        	UserDAO dao = new UserDAO();
            dao.delete(id);
            res.sendRedirect("DeleteCompletion.action");
        } catch (Exception e) {
          
            e.printStackTrace();

           
            req.getRequestDispatcher("error.jsp").forward(req, res);

        
        }
		
	}
}


