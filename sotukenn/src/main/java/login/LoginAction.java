package login;
 
import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
 
@WebServlet(urlPatterns={"/login/Login"})
public class LoginAction extends HttpServlet {
 
	public void doGet (
			HttpServletRequest request, HttpServletResponse response
		) throws ServletException, IOException {
			response.setContentType("text/html; charset=UTF-8");
			request.getRequestDispatcher("login.jsp")
			.forward(request, response);
		}
 
	public 	void doPost(
		HttpServletRequest request, HttpServletResponse response
	    ) throws ServletException, IOException {
		String ID=request.getParameter("ID");
		String password=request.getParameter("password");
	    request.getRequestDispatcher("top.jsp")
		.forward(request, response);
	}
}