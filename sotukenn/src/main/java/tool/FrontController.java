package tool;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = { "*.action" })
public class FrontController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req,
                         HttpServletResponse res)
            throws ServletException, IOException {

        // キャッシュ対策
        res.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        res.setHeader("Pragma", "no-cache");
        res.setDateHeader("Expires", 0);

        try {
            // パスを取得
            String path = req.getServletPath().substring(1);

            // ファイル名を取得しクラス名に変換
            String name = path.replace(".a", "A").replace('/', '.');

            // Actionクラスのインスタンスを生成
            Action action = (Action) Class.forName(name)
                    .getDeclaredConstructor()
                    .newInstance();

            // Actionを実行
            action.execute(req, res);

        } catch (Exception e) {
            e.printStackTrace();

            // エラーページへ遷移
            if (!res.isCommitted()) {
                req.getRequestDispatcher("/error.jsp")
                   .forward(req, res);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest req,
                          HttpServletResponse res)
            throws ServletException, IOException {

        doGet(req, res);
    }
}
