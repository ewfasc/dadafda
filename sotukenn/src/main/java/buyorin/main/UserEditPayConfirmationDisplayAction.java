package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserEditPayConfirmationDisplayAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
		res.setHeader("Pragma", "no-cache");
		res.setDateHeader("Expires", 0);
		
		HttpSession session = req.getSession(false);
		
		String pay = (String)session.getAttribute("newpay");
		System.out.println(pay);
		
		if (session == null || pay == null) {
			res.sendRedirect("UserEdit.action");
			return;
			}
		
		req.getRequestDispatcher("userEditPayConfirmation.jsp").forward(req, res);
	}
}


