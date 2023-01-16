package com.vishal;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/TrainAdd")
public class TrainAdd extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		int trainnum =Integer.parseInt(request.getParameter("tnumber"));
		String trainname = request.getParameter("tname");
		int maxseat = Integer.parseInt(request.getParameter("maxseat"));
		
		PrintWriter pw = response.getWriter();
	  if(Insert(name, trainnum, trainname, maxseat))
	  {
		  response.sendRedirect("success.jsp");
	  }
	  else {
		  pw.print("sorry p;ease try again");
	  }
	}
	
	public static boolean Insert(String name, int trainnum, String trainname, int maxseat )throws IOException
	{

	
		try {
            Class.forName("com.mysql.jdbc.Driver");
            String user = "root";
            String pass1 = "9022";
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onliine_re", user, pass1);
          
            String query = "insert into addtrain(name, trainnum, trainname, maxseat) values(?,?,?,?)";
            PreparedStatement st =  con.prepareStatement(query);
            st.setString(1,name);
            st.setInt(2, trainnum);
            st.setString(3,trainname);
            st.setInt(4, maxseat);
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
