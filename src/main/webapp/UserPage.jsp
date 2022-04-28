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
    <a class="active">User</a>
    <a href="welcome.jsp">Back to Home</a>
    <a href="AdminPage.jsp">Login as Admin</a>
  </div>
</div>
<br>
<h2>User Login</h2>
<div style="border:2px solid black;width:25% ;margin:auto;border-radius:20px ;padding:20px "align="center">
<form action="UserLogin" method= post>
<table>
  <tr>
     <td><label for=email>Email</label><br></td>
     <td><input type="email" name=email id=email/></td>
   </tr>
   <tr>
     <td><label for= pass>Password</label><br></td>
     <td><input type="password" name= password id= pass/></td>
   </tr>
   <tr>
     <td><input type=submit value=Login></td>
     <td><input type=reset value=Reset></td>
   </tr>
</table>
</form>
 <br><i>New User-Create account</i><h4>
  <a href=UserRegistration.jsp style="font-size:25;color:seagreen ;">CreateAccount</a>
  </h4>
<% String message=(String)session.getAttribute("message");
   if(message!=null){
%>
<p style="color:blue;"><%=message%></p>
<%
  session.setAttribute("message",null);}
%>
</div>
</body>
</html>