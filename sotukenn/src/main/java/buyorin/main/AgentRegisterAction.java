package buyorin.main;

import bean.Agent;
import bean.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentRegisterAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		User user = new User();
		Agent agent = new Agent();
		
		HttpSession session = req.getSession();
		session.getAttribute("user");
		session.getAttribute("agent");
		
		req.setAttribute("link", "AgentRegister.action");
		req.getRequestDispatcher("agentRegister.jsp").forward(req, res);
	}
}


