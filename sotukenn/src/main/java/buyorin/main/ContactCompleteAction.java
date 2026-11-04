package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class ContactCompleteAction extends Action {
	//お問い合わせ完了画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		if (id.contains("user")) {
			req.setAttribute("link", "Top.action");
        }else {
        	req.setAttribute("link", "Agenttop.action");
        }    		
		req.getRequestDispatcher("contactcomplete.jsp").forward(req, res);
	}
}


