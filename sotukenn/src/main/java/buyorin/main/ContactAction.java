package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class ContactAction extends Action {
	//お問い合わせ画面にアクセスするアクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		String id = req.getParameter("id");
		HttpSession session = req.getSession();
		req.setAttribute("link", "ContactExecute.action");
		req.getAttribute(id);
		req.setAttribute("id", id);
		req.getRequestDispatcher("contact.jsp").forward(req, res);
	}
}


