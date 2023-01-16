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

@WebServlet("/Reserve")
public class Reserve extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String fullname = request.getParameter("fullname");
		String userid = request.getParameter("userid");
		String password = request.getParameter("pass");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");
		
		if( Insert(fullname, userid, password, gender,email))
		{
			response.sendRedirect("success.jsp");
		}
		else {
			response.sendRedirect("error.jsp");
		}
		
	}
	
	public static boolean Insert(String fullname, String userid, String password, String gender, String email)throws IOException
	{

	
		try {
            Class.forName("com.mysql.jdbc.Driver");
            String user = "root";
            String pass1 = "9022";
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onliine_re", user, pass1);
          
            String query = "insert into reserve(fullname, userid, password, email, gender) values(?,?,?,?,?)";
            PreparedStatement st =  con.prepareStatement(query);
            st.setString(1,fullname);
            st.setString(2, userid);
            st.setString(3,password);
            st.setString(4, email);
            st.setString(5, gender);
            st.executeUpdate();
         return true;
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
	return false;
	}
	

}
