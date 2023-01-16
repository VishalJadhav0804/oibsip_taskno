<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Reserve Seat</title>
<style>
    .div-1 {
        height: 70vh;
        border: 1px solid black;
        border-radius: 10px;
        width: 50%;
        margin: 3rem auto;
        background: linear-gradient(rgb(134, 197, 214), rgb(225, 130, 225));
    }

    h1 {
        font-size: 2rem;
        font-family: 'Poppins', sans-serif;
        line-height: 60px;
        letter-spacing: 0.2rem;
        text-align: center;
    }

    h1>span {
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
        margin: 5rem auto;
    }
    .radio{
        display: flex;
        margin: 1.5rem 0rem 0rem 6.5rem;
        position: absolute;
    }
    label{
        margin-right: 20px;
    }

    label:nth-of-type(2){
        margin-left: 3rem;
    }

</style>
</head>
<body>
    <div class="div-1">
        <h1>Reserve Seat</h1>
        <form action="Reserve" method="post">
            <input type="text" name="fullname" placeholder="Full Name"><br>
            <input type="text" name="userid" placeholder="UserId"><br>
            <input type="password" name="pass" placeholder="Password"><br>
            <input type="email" name="email" placeholder="Email">
            <div class="radio">
              <label for="">Male</label><input type="radio" name="gender" value="male" placeholder="Male">
                <label for="">Female</label><input type="radio" name="gender" value="female" placeholder="Female"><br>
            </div>
            <button type="submit" value="click" onClick="fun();" >Submit</button>
        </form>
        </div>

</body>
</html>