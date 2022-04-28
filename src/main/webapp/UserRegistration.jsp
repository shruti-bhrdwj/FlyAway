<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register to FlyAway</title>
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
<br>
<div style="border:3px solid black;width:25% ;margin:auto;border-radius:20px ;padding:20px" align="center">
<form action="RegisterUser" method= post>
<label for=email>Email :-</label>
<input type="email" name=email id=email/><br><br>
<label for= pass>Password :-</label>
<input type="password" name= password id= pass/><br><br>
<label for=name>Name :-</label>
<input type="text" name=name id=name/><br><br>
<label for= phno>Phone No. :-</label>
<input type="text" name= phno id= phno/><br><br>
<label for=adno>Aadhaar No. :-</label>
<input type="text"name=adno id=adno/><br><br>
<input type=submit value=Register>
<input type=reset value=Reset>
</form>
</div>
</body>
</html>