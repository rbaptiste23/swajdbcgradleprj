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
		<caption>List of customer bikes</caption>
		<tr class="table-danger">
			<th>Name</th>
			<th>Email</th>
			<th>Bike Color</th>
			<th>Make</th>
			<th>Model</th>
		</tr>

		<c:set var="counter" scope="session" value="${1}" />

		<c:forEach var="clist" items="${customerbikelist}" varStatus="index">
			<c:set var="counter" scope="session" value="${counter+=1}" />
			
		    <c:if test ="${index.count % 2 == 0 }">
				<tr class="table-danger">
			</c:if> 
 
 
            <c:if test ="${index.count % 2 != 0}">
				<tr class="table-warning">
			</c:if>  


			<td><c:out value="${clist.name}" /></td>
			<td><c:out value="${clist.email}" /></td>
			<td><c:out value="${clist.bikeColor}" /></td>
			<td><c:out value="${clist.make}" /></td>
			<td><c:out value="${clist.model}" /></td>
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