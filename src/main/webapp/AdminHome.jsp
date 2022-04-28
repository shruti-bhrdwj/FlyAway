<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
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
<h1>Add New Flight</h1>
<div style="border:2px solid black;margin:auto;width:30% ;border-radius:20px ;padding:20px "align="center">

<form action="InsertFlight" method= post>

<label for="flight_from">From :</label>
<input type="text" name="flight_from" id=from/>
<br><br>
<label for="flight_to">To :</label>
<input type="text" name="flight_to" id=to/>
<br><br>
<label for="name"> Name :</label>
<input type="text" name="name" id=name/>
<br><br>
<label for="time_of_flight">Time :</label>
<input type="text" name="time_of_flight" id=time placeholder="Format: 03:00 AM"/>
<br><br>
<label for="ticket_price">Price :</label>
<input type="text" name="ticket_price" id=price/>
<br><br>
<label for="date">Date :</label>
<input type="text" name="date" id=departure placeholder="Format: dd-mm-yyyy"/>
<br><br>
<input type=submit value=Add>
<input type=reset value="Reset">
</form>
 
</div>
<%   String message=(String)session.getAttribute("message");
     if(message!=null){
%> <p style="color:blue;"><%=message%></p> <% 
session.setAttribute("message",null);}
%>
</body>
</html>