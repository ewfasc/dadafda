package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentEditBankExecuteAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		HttpSession session = req.getSession(false);
		
		if (session == null) {
			res.sendRedirect("AgentEditBank.action");
			return;
			}
		
		synchronized (session) {
			String bank= (String)session.getAttribute("newbank");
			System.out.println(bank);
			
			if (session == null || bank == null) {
				res.sendRedirect("AgentEditBank.action");
				return;
			}
			
			session.removeAttribute("bank");
			session.removeAttribute("newbank");
		}
		res.sendRedirect("AgentEditBankCompletion.action");
	}
}


