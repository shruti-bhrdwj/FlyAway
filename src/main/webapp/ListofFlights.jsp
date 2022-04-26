<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FLIGHT LIST</title>
</head>
<body>
<a href=welcome.jsp style="color:black;text-decoration:none;font-size:35px ;font-weight:bold ;">Flight Booking</a>
<br><br>
<%
@SuppressWarnings("unchecked")
List<String[]> flights=(List<String[]>)session.getAttribute("flights");
if(flights!=null){
%>
<h1>Flights Available</h1>
 <table border="1">
<tr>
 <th>Name</th>
 <th>Time</th>
 <th>Price</th>
</tr>
<% 
 for(String[] flight:flights){
 %>
<tr>
  <td><%=flight[0]%></td>
  <td><%=flight[1]%></td>
  <td><%=flight[2]%></td>
</tr>
</table>
  <a href=BookFlight.jsp >Book Now</a>
  <%
     }
  %>
  <%
     } else {
  %>
  
  <h1>No flights available right now.</h1>
  
  <% 
     }
  %>
  
</body>
</html>