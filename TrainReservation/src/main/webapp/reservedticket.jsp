<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import= "java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
</head>
<body>

<a href="Home.jsp">
<button class="button btn-11">Back</button>
</a>

<h2 style=text-align:center;>Reserved Tickets</h2>
<%--start -  fetch data and show on the screen in tabular form --%> 

<style>
h2{
font-size:2rem;
margin-bottom: -1rem;
}
.table{
   border-collapse:collapse;
   margin: 10px 15rem;
   font-size:0.5cm;
   width:50rem;
   text-align:center;
}

.table thead tr{
  background-color: rgb(11, 108, 115);
  color:white;
  text-align:center;
  font-weight: 800;
  font-family: 'Times New Roman', Times, serif;
}
.table th,
.table td{
padding:12px 15px;
border:1px solid black;
font-family: 'Poppins', sans-serif;
font-size: 1rem;
}


</style>


<table class="table">
  <thead >
    <tr >    
      <th scope="col">FullName</th>
      <th scope="col">Userid</th>
      <th scope="col">password</th>
       <th scope="col">email</th>
       <th scope="col">gender</th>
    </tr>
  </thead>
  <tbody>
<%


try {
    Class.forName("com.mysql.jdbc.Driver");
    String user = "root";
    String pass1 = "9022";
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onliine_re", user, pass1);
  
    String query = "select * from reserve";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(query);
    while(rs.next())
    {
    	%>
    	 <tr>
    	 <td><%= rs.getString(1)%> </td>
    	 <td><%=rs.getString(2)%> </td>
    	 <td><%= rs.getString(3)%> </td>
    	 <td><%= rs.getString(4)%> </td>
    	  <td><%= rs.getString(5)%> </td>
    	 </tr>
          <%
    }
}
catch(Exception e)
{
	e.printStackTrace();
}

%>

<br>
    

  </tbody>
</table>
<%-- end --fetch data and show on the screen in tabular form --%> 
<style>
.button {
  background-color: rgba(108, 223, 181, 0.685); /* Green */
  border: none;
  color: white;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  color:black;
}
</style>


<style>
.borderr{

   margin: auto auto;
   border: 1px solid grey;
   height:30vh;
   width:400px;
   text-align:center;
   align-item: center;
}
.inp{
  margin:3rem auto;
  height: 30px;
  border-radius: 10px;
  text-align:center;
}
.btn-11{
width:10%;
height:40px;
border-radius: 10px;
}
.btn-12{
    margin-top:-2rem;
    border-radius: 10px;
    font-size:1rem;
    line-height: 40px;
    height:40px;
    width:30%;
}
</style>
<form  action="Deleteticket" method="post">
<header class="borderr">
   <input class="inp" type="text" name = "userid" placeholder="userId"><br>
   <button class="button btn-12">DeleteTicket</button>
   </header>
</form>
 


</body>
</html>