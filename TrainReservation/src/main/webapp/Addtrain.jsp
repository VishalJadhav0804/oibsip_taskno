<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add train</title>
<style>
    .div-1 {
      height: 60vh;
      border: 1px solid black;
      border-radius: 10px;
      width: 50%;
      margin: 3rem auto;
      background: linear-gradient(rgb(134, 197, 214), rgb(225, 130, 225));
    }

    h1 {
      font-size: 2rem;
      font-family: "Poppins", sans-serif;
      line-height: 60px;
      letter-spacing: 0.2rem;
      text-align: center;
    }

    h1 > span {
      font-size: 1.5rem;
      letter-spacing: 0.1rem;
    }

    form {
      margin: 0 auto;
    }

    input {
      padding: 0.7rem;
      width: 70%;
      margin: 0 auto;
      border-radius: 10px;
      align-items: center;
      justify-content: center;
      position: relative;
      display: block;
    }

    button {
      padding: 0.7rem 2rem;
      border-radius: 8px;
      border: none;
      color: #fff;
      font-size: 1rem;
      background-color: cornflowerblue;
      text-align: center;
      display: block;
      margin: auto;
    }


  </style>
</head>
<body>
    <div class="div-1">
        <h1>Add Train</h1>
        <form action="TrainAdd" method="post">
          <input type="text" name="name" placeholder="Name" /><br />
          <input type="number" name="tnumber" placeholder="Train Number" /><br />
          <input type="text" name="tname" placeholder="Train Name" /><br />
          <input type="number" name="maxseat" placeholder="Max Sit" /><br />
          <button type="submit" value="Add train">Submit</button><br />
        </form>
      </div>

</body>
</html>