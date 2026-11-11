package buyorin.main;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class UserDeleteAction extends Action {
	//削除確認画面を表示するするアクション
	public void execute(HttpServletRequest req, HttpServletResponse res)throws Exception{
		req.setAttribute("link", "UserDelete.action");
		req.getRequestDispatcher("userdelete.jsp").forward(req, res);
	}
}


