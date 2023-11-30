package com.example;

import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(value = "/member")
public class memberSernlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id= req.getParameter("id");
		String password = req.getParameter("password");
		System.out.print("會員帳號"+id);
		System.out.print("會員密碼"+password);
		
		
		RequestDispatcher rd = req.getRequestDispatcher("/bank/customer/member.jsp");
		rd.forward(req, resp);
		
		
	}
	
	
	



}
