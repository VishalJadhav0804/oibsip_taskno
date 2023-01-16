package com.vishal;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Login")
public class Login extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {
		
		String userid = request.getParameter("userid");
		String pass = request.getParameter("pass");
		System.out.println(userid);
		
		Dbconnect d = new Dbconnect();
		if(d.check(userid, pass))
		{
			response.sendRedirect("Home.jsp");
		}
		else {
			response.sendRedirect("Login.jsp");
		}
	}

}
