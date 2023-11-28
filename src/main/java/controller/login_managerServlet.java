package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/bank/manager/login")
public class login_managerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");

		String password = req.getParameter("password");

		if ("abc".equals(username) && "123".equals(password)) {

			HttpSession session = req.getSession();
			session.setAttribute("isLogin", true);
			session.setAttribute("username", username);

			resp.sendRedirect("./approval.jsp");
			return;

//			RequestDispatcher rd = req.getRequestDispatcher("./approval.jsp");
//			rd.forward(req, resp);
		}
		req.setAttribute("error", "帳號或密碼輸入錯誤!");
		RequestDispatcher rd = req.getRequestDispatcher("./login.jsp");
		rd.forward(req, resp);
	}
}
