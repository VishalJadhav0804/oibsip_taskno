package com.vishal;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dbconnect {

	public boolean check(String userid, String password) throws IOException
	{
		try {
            Class.forName("com.mysql.jdbc.Driver");
            String user = "root";
            String pass1 = "9022";
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onliine_re", user, pass1);
          
            String query = "select * from user_login where userid=? and pass=?";
            PreparedStatement st =  con.prepareStatement(query);
            st.setString(1, userid);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
            	return true;
            }
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return false;
	}
	
	
}
