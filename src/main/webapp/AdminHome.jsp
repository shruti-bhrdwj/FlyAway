<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
</head>
<body>
<br>
<a href="/FlyAway-maven-webapp/welcome.jsp">Flight Booking</a>
<br><br>
<h1>Add New Flight</h1>
<div>

<form action="InsertFlight" method= post>

<label for= flight_from>From :-</label> 
<input type="text" name=flight_from id= from/>
<br><br>
<label for=flight_to>To :-</label>
<input type="text" name=flight_to id=to/>
<br><br>
<label for=name> Name :-</label> 
<input type="text" name=name id=name/>
<br><br>
<label for=time_of_flight>Time :-</label>
<input type="text" name=time_of_flight id=time/>
<br><br>
<label for= ticket_price>Price :-</label>
<input type=number name=ticket_price id= price/>
<br><br>
<label for=date>Departure :-</label>
<input type=date name=date id=departure/>
<br><br>
<input type=submit value=Add>
<input type=reset>
</form>
 
</div>
<%   String message=(String)session.getAttribute("message");
     if(message!=null){
%> <p style="color:silver;"><%=message%></p> <% 
session.setAttribute("message",null);}
%>
</body>
</html>