<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
<a href=welcome.jsp style="color:black;text-decoration:none;font-size:35px ;font-weight:bold ;">Flight Booking</a>
<br><br>
<div style="border:3px solid black;width:25% ;border-radius:20px ;padding:20px "align="center">
<form action="ForgotPwd" method= post>
<label for=email>Email :-</label> <input type="email"name=email id=email/>
<br><br>
<label for= pass>New Password :-</label> <input type="password" name= password id= pass/>
<br><br>
<input type=submit value="Change Password">
<input type=reset>
</form>
</div>
</body>
</html>