<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to FlyAway</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="header" class="center">
  <a class="logo">FlyAway</a>
  <div class="header-right">
    <a class="active" href="welcome.jsp">Home</a>
    <a href="UserPage.jsp">Login as User</a>
    <a href="AdminPage.jsp">Login as Admin</a>
  </div>
</div>
<%
@SuppressWarnings("unchecked")
HashMap<String,String>user=(HashMap<String,String>)session.getAttribute("user");
if(user!=null){
%>
<p>Welcome to FlyAway, <%=user.get("name")%>!</p>
<a href="Logout">Logout</a>
<%
  }
%>
<br><br>
<div style="border:2px solid black;width:30% ;border-radius:20px ;padding:20px;margin:auto;" align="center">
<form action="FlightsList" method= post>
<label for= from>From :</label> <input type=text name=from id=from placeholder="Hint: Jaipur"/>
<br><br>
<label for=to>To :</label> <input type=text name=to id=to placeholder="Hint: Delhi"/>
<br><br>
<label for=departure>Departure :</label> <input type="text" name=departure id=departure placeholder="Hint: 09-05-2022"/>
<br><br>
<label for=travellers>Number of Travellers :</label> <input type=number name=travellers id=travellers/>
<br><br>
<input type=submit value=Search>
<input type=reset value=Reset>
</form>
</div>
</body>
</html>