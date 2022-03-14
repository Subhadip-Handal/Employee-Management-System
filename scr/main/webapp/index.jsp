<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Welcome to Login Page</h1>
	<%
		Object message=session.getAttribute("message");
		if(message!=null){
			out.println("<font color='green' size='5' >"+message+"</font>");
		}
		Object error=session.getAttribute("error");
		if(error!=null){
			out.println("<font color='red' size='5' >"+error+"</font>");
		}
		session.invalidate();
	%>
	<form action="/EmployeeManagementAssignement/Login" method="post">
	<table>
			<tr>
				<td>UserName:</td>
				<td><input name="firstName" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input name="password" type="password" /></td>
			</tr>
			<tr>
				<td />
				<td><input type="submit" /></td>
		</table>
	</form><br><br>
	<a href="Home.jsp"><button><h2>Home</h2></button></a>
</body>
</html>