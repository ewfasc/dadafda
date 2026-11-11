package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class AgentEditConfirmationAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		String type = req.getParameter("type");
		String value = req.getParameter("value");
		
		System.out.println(type);
		System.out.println(value);
		
		HttpSession session = req.getSession();
		
		session.setAttribute("type", type);
		session.setAttribute("value", value);
		
		res.sendRedirect("AgentEditConfirmationDisplay.action");
	}
}


