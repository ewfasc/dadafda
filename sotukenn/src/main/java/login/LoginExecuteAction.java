import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import tool.Action;

public class LoginExecuteAction extends Action {
//ログイン認証を行うアクション
    public void execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

        String id = request.getParameter("id");
        String password = request.getParameter("password");

        try {
            if (id != null && password != null) {
                HttpSession session = request.getSession();
                session.setAttribute("loginUser", user);
                request.setAttribute("id", id);
                request.setAttribute("password", password);
                request.getRequestDispatcher("Menu.action").forward(request, response);
                return;
            } else {
                request.setAttribute("error", "ログインに失敗しました。IDまたはパスワードが正しくありません。");
                request.setAttribute("link", "LoginExecute.action");
                request.getRequestDispatcher("../login.jsp").forward(request, response);
            }

        } catch (Exception e) {
          
            e.printStackTrace();

            
           
            request.getRequestDispatcher("error.jsp").forward(request, response);

        
        }
    }
}