<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style>

  .div-1{
    height: 60vh;
    border: 1px solid black;
    border-radius: 10px;
    width: 50%;
    margin: 3rem auto;
     background: linear-gradient(rgb(134, 197, 214), rgb(225, 130, 225));
    
  }
    h3{
        font-size: 2rem;
        font-family: 'Poppins', sans-serif;
        line-height: 60px;
        letter-spacing: 0.2rem;
        text-align: center;
        
    }
    form{
        margin: 0 auto;
        
    }
    input{
        padding: 0.7rem;
        width: 70%;
        margin: 1rem auto;
        border-radius: 10px;
        align-items: center;
        justify-content: center;
        position: relative;
        display: block;
    }
  
  input[type="password"]{
    margin-top: 0;
  }
  button{
    padding: 0.7rem 2rem;
    border-radius: 8px;
    border: none;
    color: #fff;
    font-size: 1rem;
    background-color: cornflowerblue;
    margin-left: 11rem;
  }
  a{
    text-decoration: none;
    font-size: 1rem;
    
    padding: 0.8rem 1.2rem;
    border-radius: 10px;
    background-color: cornflowerblue;
    color: #fff;
    margin-left: 5rem;
  }
</style>
</head>
<body>
  <div class="div-1">
    <h3>Welcome To Train Reservation</h3>
    <form action="Login" method="post">
      <input type="text" name = "userid" placeholder="userid"><br>
      <input type="password" name = "pass" placeholder="password"><br><br>
      <button type="submit" value="login">Login</button> 
      <a href="Register.jsp">Register</a>
    </form>
</div>
</body>
</html>

