package servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.UserLogin;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//フォワード先
		String forwardPath = null;

		//サーブレットクラスの動作を決定する「action」の値を
		//リクエストパラメータから取得
		String action = request.getParameter("action");

		//「登録の開始」をリクエストされたときの処理
		if(action == null){
			//フォワード先を設定
			forwardPath = "/WEB-INF/jsp/index.jsp";
		}else if(!(request.getParameter("login") == null)){
			String name = request.getParameter("name");
			String pass = request.getParameter("pass");

			UserLogin userLogin = new UserLogin();
			userLogin.setName(name);
			userLogin.setPass(pass);

			request.setAttribute("userLogin", userLogin);

			forwardPath = "/WEB-INF/jsp/check.jsp";
		}

		//設定されたフォワード先にフォワード
		RequestDispatcher dispatcher =
				request.getRequestDispatcher(forwardPath);
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
