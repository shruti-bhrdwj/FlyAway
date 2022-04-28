<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header">
  <a class="logo">FlyAway</a>
  <div class="header-right">
    <a class="active" href="welcome.jsp">Back to Home</a>
  </div>
</div><br>
<h1>Admin Login</h1>
<div style="border:2px solid black;margin:auto;width:20% ;border-radius:20px ;padding:20px "align="center">
<form action="AdminLogin" method= post>
<label for=email>Email :-</label>
<input type="email" name=email id=email/>
<br><br>
<label for= pass>Password :-</label>
<input type="password" name= password id= pass/>
<br><br>
<input type=submit value=Login>
<input type=reset value=Reset></form>
</div>
<a href=ForgotPassword.jsp style="font-size:25;color:red ;">Forgot Password</a>
<% String message=(String)session.getAttribute("message");
    if(message!=null){
%>
<p style="color:blue;"><%=message%> </p>
<% session.setAttribute("message",null);} %>

</body>
</html>