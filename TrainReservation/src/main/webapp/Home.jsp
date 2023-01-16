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


<%-- navbar start --%>

<style>

header{
   background-color: rgb(11, 108, 115);
   border-radius:10px;
   margin-top:-1rem;
}
ul{
   display:flex;
}
ul li a{
    text-decoration:none;
    color:white;
     font-size:0.5cm;
}
  ul li{
    list-style:none;
    padding:10px;
    margin-left:10px;
  
  }
</style>
<header>
  <nav>
   <ul>
      <li><a href="Addtrain.jsp">AddTrain</a></li>
      <li><a href="Reservetrain.jsp">ReserveTrain</a></li>
      <li><a href="reservedticket.jsp">ReserverTicket</a></li>
       <li><a href="about.asp">About</a></li>
   </ul>
  </nav>
</header>
<%-- navbar end --%>

<h2 style=text-align:center;>Available Trains</h2>
<%--start -  fetch data and show on the screen in tabular form --%> 

<style>
h2{
font-size:2rem;
margin-top:2rem;
margin-bottom:-1rem;
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
      <th scope="col">Name</th>
      <th scope="col">TrainNumber</th>
      <th scope="col">TrainName</th>
       <th scope="col">MaxSeat</th>
    </tr>
  </thead>
  <tbody>
<%
String name;
int trainnum;
String trainname;
int maxseat ;

try {
    Class.forName("com.mysql.jdbc.Driver");
    String user = "root";
    String pass1 = "9022";
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/onliine_re", user, pass1);
  
    String query = "select * from addtrain";
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery(query);
    while(rs.next())
    {
    	%>
    	 <tr>
    	 <td><%= rs.getString(1)%> </td>
    	 <td><%=rs.getInt(2)%> </td>
    	 <td><%= rs.getString(3)%> </td>
    	 <td><%= rs.getInt(4)%> </td>
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


 


</body>
</html>