<%@page import="com.org.beans.Emp"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@  taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Page</title>
</head>
<body>
	<h2>Update Profile Page</h2>
	<%
		Object objEmp = session.getAttribute("emp");
		Emp emp = null;
		boolean isAdmin = false;
		if (objEmp != null) {
			emp = (Emp) objEmp;
			session.setAttribute("emp", emp);
			isAdmin = emp.getPermission().equals("admin");
		}
		if (emp == null) {
			session.setAttribute("error", "Please login Before Continue");
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}
		Object list = request.getSession().getAttribute("empList");
		List<Emp> listEmp = (List<Emp>) list;
		
		Emp updateUser = listEmp.get(Integer.parseInt(request.getParameter("index")));
		System.out.println("updateUser : " + updateUser);
		boolean edit=Boolean.parseBoolean(request.getParameter("edit"));
	%>
	<br>
	<form action="${pageContext.request.contextPath}/Update"
		method="post">
		<label for="fname"> ID:</label>
		<br><br> 
		<input type="number" name="id" value="<%=updateUser.getId()%>"  disabled>
		<br><br>
		<input type="number" name="id" value="<%=updateUser.getId()%>" style="display: none">
		<br><br>
		<c:if test="<%=isAdmin && edit %>">
			<label for="fname">Name:</label>
			<br><br>
			<input type="text" name="name" value="<%=updateUser.getName()%>">
			<br><br>
			<label for="fname">Email:</label>
			<br><br>
			<input type="text" name="email" value="<%=updateUser.getEmail()%>">
			<br><br>
			<label for="fname">Password:</label>
			<br><br>
			<input type="text" name="password" value="<%=updateUser.getPassword()%>" >
			<br><br>
			<label for="fname">Salary:</label>
			<br><br>
			<input type="text" name="salary" value="<%=updateUser.getSalary()%>">
			<br><br>
		</c:if>
		<c:if test="<%=!isAdmin  || !edit%>">
			<label for="fname">Name:</label>
			<br><br>
			<input type="text" name="name" value="<%=updateUser.getName()%>" disabled="false">
			<br><br>
			<label for="fname">Email:</label>
			<br><br>
			<input type="text" name="email" value="<%=updateUser.getEmail()%>" disabled="true">
			<br><br>
			<label for="fname">Password:</label>
			<br><br>
			<input type="text" name="password" value="<%=updateUser.getPassword()%>" disabled="false">
			<br><br>
			<label for="fname">Salary:</label>
			<br><br>
			<input type="text" name="salary" value="<%=updateUser.getSalary()%>" disabled="true">
			<br><br>
		</c:if>
		<c:if test="<%=isAdmin  && edit%>">
			<br><input type="submit" value="Update Details">
		</c:if>
				<input type="text" value="false" name="current_user" style="display: none" />
	</form><br><br>
		<a href="Home.jsp"><button><h2>Home</h2></button></a>
</body>
</html>