package buyorin.main;

import bean.Agent;
import bean.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentConfirmationAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		String name = "";
		String password = "";
		String tell = "";
		String mail = "";
		String bank = "";
		
		name = req.getParameter("name");
		password = req.getParameter("password");
		tell = req.getParameter("tell");
		mail = req.getParameter("email");
		bank = req.getParameter("bank");
		
		String id = "1234";
		
		User user = new User();
		user.setId(id);
		user.setUsername(name);
		user.setPassword(password);
		user.setMail(mail);
		user.setTell(tell);
		
		Agent agent = new Agent();
		agent.setId(id);
		agent.setBank(bank);
		
		HttpSession session = req.getSession();
		session.setAttribute("user", user);
		session.setAttribute("agent", agent);
		
		req.setAttribute("link", "AgentConfirmation.action");
		req.getRequestDispatcher("agentConfirmation.jsp").forward(req, res);
	}
}


