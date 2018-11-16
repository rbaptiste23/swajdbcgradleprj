<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="css/cust.css">
</head>
<body>

	<table>
		<tr>
			<th>Customer Id</th>
			<th>Name</th>
			<th>Ssi</th>
			<th>Email</th>
			<th>Phone</th>
		</tr>
		<c:forEach var="clist" items="${customerlist}">
			<tr>
				<td><c:out value="${clist.customerId}" /></td>
				<td><c:out value="${clist.name}" /></td>
				<td><c:out value="${clist.ssi}" /></td>
				<td><c:out value="${clist.email}" /></td>
				<td><c:out value="${clist.phone}" /></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>