<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

</head>
<body>




	<table class="table table-hover">
		<tr class="table-danger">
			<th>Customer Id</th>
			<th>Name</th>
			<th>Ssi</th>
			<th>Email</th>
			<th>Phone</th>
		</tr>
		
		<c:set var = "counter" scope = "session" value = "${1}"/>

		<c:forEach var="clist" items="${customerlist}">

   
			<c:if test="${counter < 3}">
				<tr class="table-success">
			</c:if>

			<c:if test="${counter > 3}">
				<tr class="table-warning">
				 
			</c:if>
			
			<c:set var="counter" value="${count + 1}" scope="session"/>
			


			<td><c:out value="${clist.customerId}" /></td>
			<td><c:out value="${clist.name}" /></td>
			<td><c:out value="${clist.ssi}" /></td>
			<td><c:out value="${clist.email}" /></td>
			<td><c:out value="${clist.phone}" /></td>
			</tr>
		</c:forEach>

	</table>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</body>
</html>