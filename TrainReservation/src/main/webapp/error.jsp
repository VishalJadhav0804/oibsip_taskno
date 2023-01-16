<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sorry please try again..</title>
</head>
<body>
<style>

.alert {
  padding: 20px;
  background-color:red;
  color: white;
  margin-bottom: 15px;
  border-radius:40px;
}

/* The close button */
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;

}
#tex{
   text-align:center;
}

/* When moving the mouse over the close button */
.closebtn:hover {
  color: black;
}
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}
</style>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>
  <h3 id="tex">Sorry, Something wrong!!</h3>
</div>
<a href="Home.jsp">
<button class="button">Back</button>
</a>
</body>
</html>