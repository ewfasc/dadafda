package buyorin;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import tool.Action;

public class LoginExecuteAction extends Action {
//ログイン認証を行うアクション
    public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
    	
//    	HttpSession session = req.getSession();
//    	
//        String id = req.getParameter("id");
//        String password = req.getParameter("password");
//        MemberDAO dao = new MemberDAO();
//        Member member = dao.login(id, password);
//        
//        if (member != null) {
//        	session.setAttribute("member", member);
//        	res.sendRedirect("main/Top.action");
//        } else {
//        	req.setAttribute("error", "ログインに失敗しました。IDまたはパスワードが正しくありません。");
//        	req.setAttribute("link", "LoginExecute.action");
//        	req.getRequestDispatcher("login.jsp").forward(req, res);
//        }
    }
}
