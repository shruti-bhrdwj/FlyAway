<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
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
<a href=welcome.jsp style="color:black;text-decoration:none;font-size:35px ;font-weight:bold ;">Flight Booking</a>
<br><br>
<% 
@SuppressWarnings("unchecked")

 HashMap<String,String> 
 user = (HashMap<String,String>) session.getAttribute("user");
 if(user==null){
 response.sendRedirect("UserPage.jsp");
 }
 %>
 <p align="center"style="color:green;margin:auto;font-size: 40px ;font-weight:bold ">Flight Booked Successfully</p>

</body>
</html>