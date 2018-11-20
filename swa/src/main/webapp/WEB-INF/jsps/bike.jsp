<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<table class="table table-sm">
		<caption>List of bikes</caption>
		<tr class="table-danger">
			<th>Bike Id</th>
			<th>Bike color</th>
			<th>Make</th>
			<th>Model</th>
			<th>Customer Id</th>
			<th>Purchase Price</th>
			<th>Serial Number</th>
		</tr>
		<c:forEach var="blist" items="${bikelist}" varStatus = "index">
			<c:if test="${index.count % 2 == 0 }">
				<tr class="table-danger">
			</c:if>


			<c:if test="${index.count % 2 != 0}">
				<tr class="table-warning">
			</c:if>
			
			<td><c:out value="${blist.id}" /></td>
			<td><c:out value="${blist.bikeColor}" /></td>
			<td><c:out value="${blist.make}" /></td>
			<td><c:out value="${blist.model}" /></td>
			<td><c:out value="${blist.customerId}" /></td>
			<td><c:out value="${blist.purchasePrice}" /></td>
			<td><c:out value="${blist.serialNumber}" /></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>