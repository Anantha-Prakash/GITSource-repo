package com.test;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		String user =request.getParameter("user");
		String pass=request.getParameter("pwd");
		if(user.contentEquals("java") && pass.contentEquals("admin"))
		{
			//out.println("login success");
			//RequestDispatcher rd=request.getRequestDispatcher("home.html");
			//rd.forward(request, response);
			response.sendRedirect("Welcome");
		}
		else
		{
			out.println("<h2><font color='red'>login failed</font></h2>");
			RequestDispatcher rd=request.getRequestDispatcher("login.html");
	}
	}
}


