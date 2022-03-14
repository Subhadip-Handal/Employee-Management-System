<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/Register" method="post">
	<h1>User Registration:</h1><br/><br/><br/>
	<table>
			<tr>
				<td><label for="fname"> ID:</label></td>
  				<td><input type="text" name="id"></td>
			</tr>
 			 <tr>
				<td><label for="fname">Name:</label></td>
  				<td><input type="text"  name="name"></td>
			</tr>
 			 <tr>
				<td><label for="fname">Email:</label></td>
  				<td><input type="text"  name="email"></td>
  			</tr>
  			<tr>
				<td><label for="fname">Password:</label></td>
  				<tr><input type="text"  name="password"></td>
  			</tr>
  			<tr>
				<td><label for="fname">Salary:</label></td>
 				<tr><input type="text" name="salary"></td>
 				</tr>
  </table>
  <br/><br/><br/>
   <input type="submit" value="Submit">
</form> <br><br>
		<a href="Home.jsp"><button><h2>Home</h2></button></a>
</body>
</html>