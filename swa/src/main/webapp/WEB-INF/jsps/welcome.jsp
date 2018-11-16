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

	<h1>Hello from Welcome.jsp</h1>



	<form>
		<table class="formtable">
			<tr>
				<td><Button type="submit" name="blist" formmethod="post"
						formaction="http://localhost:8081/Customer">Display Customers</Button></td>

				<td><Button type="submit" name="blist" formmethod="post"
						formaction="http://localhost:8081/Bike">Display Bikes</Button></td>
			</tr>
		</table>
	</form>

</body>
</html>