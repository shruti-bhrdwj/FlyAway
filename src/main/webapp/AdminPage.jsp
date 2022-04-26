<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
</head>
<body>
<a href=welcome.jsp>FlyAway</a>
<br><br>
<h1>Admin Login</h1>
<div>
<form action="AdminLogin" method= post>
<label for=email>Email :-</label>
<input type="email" name=email id=email/>
<br><br>
<label for= pass>Password :-</label>
<input type="password" name= password id= pass/>
<br><br>
<input type=submit value=Login>
<input type=reset></form>
</div>
<a href=ForgotPassword.jsp style="font-size:25;color:red ;">Forgot Password</a>
<% String message=(String)session.getAttribute("message");
    if(message!=null){
%>
<p style="color:silver;"><%=message%> </p>
<% session.setAttribute("message",null);} %>
</body>
</html>