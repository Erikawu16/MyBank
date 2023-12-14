package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

//@WebServlet(value = "/bank/register")
public class registerServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String name = req.getParameter("name");
		String Id = req.getParameter("Id");
		String date = req.getParameter("date");
		String gender = req.getParameter("gender");
		String email = req.getParameter("email");
		String password = req.getParameter("password");
		String Residences = req.getParameter("Residences");
		
		
		System.out.println(Id);
		System.out.println(name);
		System.out.println(date);
		System.out.println(gender);
		System.out.println(email) ;
		System.out.println(password);
		System.out.println(Residences);
		
		
		
	RequestDispatcher rd = req.getRequestDispatcher("./register_finish.jsp");
		rd.forward(req, resp);
	}
}
