package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentEditBankConfirmationAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		String bank = req.getParameter("bank");
		
		System.out.println(bank);
		
		HttpSession session = req.getSession();
		
		session.setAttribute("newbank", bank);
		
		res.sendRedirect("AgentEditBankConfirmationDisplay.action");
	}
}


