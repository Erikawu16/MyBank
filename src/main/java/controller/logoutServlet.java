<<<<<<< HEAD
package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/bank/customer/logout")
public class logoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
		HttpSession session = req.getSession();//取得session
		session.invalidate(); //讓sesssion失效>>登出
		resp.sendRedirect("../index.jsp");
	}



}
=======
package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/bank/customer/logout")
public class logoutServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
		HttpSession session = req.getSession();//取得session
		session.invalidate(); //讓sesssion失效>>登出
		resp.sendRedirect("../index.jsp");
	}



}
>>>>>>> 73588ede17ca1f3eeff22090d1bc1b32151547f7
