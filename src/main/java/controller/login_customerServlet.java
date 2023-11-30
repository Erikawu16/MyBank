package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/bank/main")
public class login_customerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String username = req.getParameter("username");

		String password = req.getParameter("password");
		System.out.println(username);
		System.out.println(password);

		if ("abc".equals(username) && "123".equals(password)) {

			HttpSession session = req.getSession();
			session.setAttribute("isLogin", true);
			session.setAttribute("username", username);
			session.setMaxInactiveInterval(60*60*1);//60分鐘時候沒動作會登出
			resp.sendRedirect("./customer/member_box.jsp");
			return;

		}
		req.setAttribute("error", "帳號或密碼輸入錯誤!");
		RequestDispatcher rd = req.getRequestDispatcher("./index.jsp");
		rd.forward(req, resp);
	}
}
