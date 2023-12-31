package filter;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebFilter(value = {"/*"})
public class LoginFilter extends HttpFilter{

	@Override
	protected void doFilter(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		String urlString = request.getRequestURL().toString();
		
		// 放行條件
		if(urlString.endsWith("index.jsp") || urlString.endsWith("login.jsp") || 
				urlString.endsWith("register.jsp") || urlString.endsWith("main") 
				|| urlString.endsWith("login")|| urlString.endsWith("register_finish.jsp")||
				 urlString.endsWith("register")
				|| urlString.indexOf("/img")>=0 
				|| urlString.endsWith(".css")
				|| urlString.endsWith(".js") ) {
			chain.doFilter(request, response);
			return;
		}
		
		// 檢查是否登入
		HttpSession session = request.getSession();
		boolean isLogin = session.getAttribute("isLogin") == null 
				? false: (boolean)session.getAttribute("isLogin");
		if(!isLogin) {
			response.sendRedirect("/MyBank/bank/index.jsp");
			return;
		}
		
		chain.doFilter(request, response);
	}

	
}