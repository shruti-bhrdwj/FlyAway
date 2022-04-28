<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
  <a class="logo">FlyAway</a>
  <div class="header-right">
    <a class="active" href="welcome.jsp">Back to Home</a>
  </div>
</div>
<br>
<div style="border:3px solid black;margin:auto;width:25% ;border-radius:20px ;padding:20px "align="center">
<form action="ForgotPwd" method= post>
<label for=email>Email :-</label> <input type="email"name=email id=email/>
<br><br>
<label for= pass>New Password :-</label> <input type="password" name= password id= pass/>
<br><br>
<input type=submit value="Change Password">
<input type=reset value="Reset">
</form>
</div>
</body>
</html>