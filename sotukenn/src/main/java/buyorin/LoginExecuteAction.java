package buyorin;

import DAO.UserDAO;
import bean.User;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class LoginExecuteAction extends Action {
//ログイン認証を行うアクション
    public void execute(HttpServletRequest req, HttpServletResponse res) throws Exception {

        String id = req.getParameter("id");
        String password = req.getParameter("password");
        System.out.println(id);
        try {
        	UserDAO dao = new UserDAO();
            User user = dao.login(id, password);
            if (id != null && password != null) {
                HttpSession session = req.getSession();
                session.setAttribute("loginUser", user);
                req.setAttribute("id", id);
                session.setAttribute("id", id);
                req.setAttribute("password", password);
                System.out.println(id);
                if (id.contains("user")) {
                	req.getRequestDispatcher("main/Top.action").forward(req, res);
                }else {
                	req.getRequestDispatcher("main/Agenttop.action").forward(req, res);
                }
                return;
            } else {
                req.setAttribute("error", "ログインに失敗しました。IDまたはパスワードが正しくありません。");
                req.setAttribute("link", "LoginExecute.action");
                req.getRequestDispatcher("login.jsp").forward(req, res);
            }

        } catch (Exception e) {
          
            e.printStackTrace();

            
           
            req.getRequestDispatcher("error.jsp").forward(req, res);

        
        }
    }
}