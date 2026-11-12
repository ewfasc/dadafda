package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserEditPayExecuteAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		HttpSession session = req.getSession(false);
		
		if (session == null) {
			res.sendRedirect("UserEditPay.action");
			return;
			}
		
		synchronized (session) {
			String pay= (String)session.getAttribute("newpay");
			System.out.println(pay);
			
			if (session == null || pay == null) {
				res.sendRedirect("UserEditPay.action");
				return;
			}
			
			session.removeAttribute("pay");
			session.removeAttribute("newpay");
		}
		res.sendRedirect("UserEditPayCompletion.action");
	}
}


