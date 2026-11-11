package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class UserEditConfirmationDisplayAction extends Action {
	//利用者メインメニュー画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		
		res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
		res.setHeader("Pragma", "no-cache");
		res.setDateHeader("Expires", 0);
		
		HttpSession session = req.getSession(false);
		
		String type = (String)session.getAttribute("type");
		String value = (String)session.getAttribute("value");
		System.out.println(type);
		System.out.println(value);
		
		if (session == null ||
			type == null ||
			value == null) {
			res.sendRedirect("UserEdit.action");
			return;
			}
		
		switch (type) {
			case "name":
				session.setAttribute("name", value);
				break;
			case "password":
				session.setAttribute("password", value);
				break;
			case "mail":
				session.setAttribute("mail", value);
				break;
			case "tell":
				session.setAttribute("tell", value);
				break;
			case "address":
				session.setAttribute("address", value);
				break;
			default:
				res.sendRedirect("UserEdit.action");
				return;

		}
		
		
		req.getRequestDispatcher("userEditConfirmation.jsp").forward(req, res);
	}
}


