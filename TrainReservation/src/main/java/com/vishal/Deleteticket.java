package com.vishal;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/Deleteticket")
public class Deleteticket extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String userid = request.getParameter("userid");
		
		if(check(userid))
		{
			response.sendRedirect("success.jsp");
		}
		
	}
 
	public static boolean check(String userid)
	{
		
		try {
		    Class.forName("com.mysql.jdbc.Driver");
		    String user1 = "root";
		    String pass1 = "9022";
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onliine_re", user1, pass1);
		  
		    
		    String q = "delete from reserve where userid=?";
		    PreparedStatement pstm = con.prepareStatement(q);

		    pstm.setString(1, userid);

		    pstm.executeUpdate();
		   return true;

		} catch (Exception e) {
		    System.out.println(e);
		}
		
		return false;
	}
}
