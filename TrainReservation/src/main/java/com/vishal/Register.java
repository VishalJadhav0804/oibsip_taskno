package com.vishal;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Register")
public class Register extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws  IOException {
		
		String userid = request.getParameter("userid");
		String pass = request.getParameter("pass");
		
		PrintWriter pw = response.getWriter();
		if(Insert(userid, pass))
		{
			pw.print("succes");
		}
	}

	public static boolean Insert(String userid, String password)throws IOException
	{

	
		try {
            Class.forName("com.mysql.jdbc.Driver");
            String user = "root";
            String pass1 = "9022";
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onliine_re", user, pass1);
          
            String query = "insert into user_login(userid, pass) values(?,?)";
            PreparedStatement st =  con.prepareStatement(query);
            st.setString(1, userid);
            st.setString(2, password);
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
