<%@page import="com.org.beans.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Current User Update</title>
</head>
<body>
	<h2>Welcome to Update Profile Page</h2>
	<%
		Object objEmp = session.getAttribute("emp");
		Emp emp = null;
		if (objEmp != null) {
			emp = (Emp) objEmp;
		}
		if (emp == null) {
			session.setAttribute("error", "Please login Before Continue");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
	%>
	<br>
	<form action="${pageContext.request.contextPath}/Update?current_user=true" method="post">
		<label for="fname"> ID:</label>
		<br><br> 
		<input type="number" name="id" value="<%=emp.getId()%>" disabled>
		<br><br>
		<input type="number" name="id" value="<%=emp.getId()%>" style="display: none">
		<br><br> 
		<label for="fname">Name:</label>
		<br><br> 
		<input type="text" name="name" value="<%=emp.getName()%>"> 
		<br><br> 
		<label for="fname">Email:</label> 
		<br><br> 
		<input type="text" name="email" value="<%=emp.getEmail()%>"> 
		<br><br> 
		<label for="fname">Password:</label> 
		<br><br> 
		<input type="text" name="password" value="<%=emp.getPassword()%>"> 
		<br><br>
		<label for="fname">Salary:</label> 
		<br><br> 
		<input type="text" name="salary" value="<%=emp.getSalary()%>"> 
		<br><br>
		<input type="text" value="true" name="current_user" style="display: none"/>
		<br><br> 
		<input type="submit" value="Update Details">
	</form><br><br>
		<a href="Home.jsp"><button><h2>Home</h2></button></a>
</body>
</html>