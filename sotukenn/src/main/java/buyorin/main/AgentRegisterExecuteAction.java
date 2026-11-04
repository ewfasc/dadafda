package buyorin.main;

import bean.Agent;
import bean.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentRegisterExecuteAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
		Agent agent = (Agent)session.getAttribute("agent");
		
		session.removeAttribute("user");
		session.removeAttribute("agent");
		
		res.sendRedirect("AgentCompletion.action");
	}
}


