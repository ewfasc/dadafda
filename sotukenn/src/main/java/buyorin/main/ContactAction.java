package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class ContactAction extends Action {
	//お問い合わせ画面にアクセスするアクション
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.getRequestDispatcher("contact.jsp").forward(req, res);
	}
}


