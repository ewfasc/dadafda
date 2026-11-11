package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentEditExecuteAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		HttpSession session = req.getSession(false);
		
		if (session == null) {
			res.sendRedirect("AgentEdit.action");
			return;
			}
		
		synchronized (session) {
			String type= (String)session.getAttribute("type");
			String value = (String)session.getAttribute("value");
			
			if (type == null || value == null) {
				res.sendRedirect("AgentEdit.action");
				return;
			}
			
			session.removeAttribute("type");
			session.removeAttribute("value");
		}
		res.sendRedirect("AgentEditCompletion.action");
	}
}


