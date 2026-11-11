package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserEditPayConfirmationAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		String pay = req.getParameter("pay");
		
		System.out.println(pay);
		
		HttpSession session = req.getSession();
		
		session.setAttribute("pay", pay);
		
		res.sendRedirect("UserEditPayConfirmationDisplay.action");
	}
}


