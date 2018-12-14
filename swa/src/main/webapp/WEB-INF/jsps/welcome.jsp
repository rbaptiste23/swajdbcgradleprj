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

<!-- Load React. -->
<!-- Note: when deploying, replace "development.js" with "production.min.js". -->
<script src="https://unpkg.com/react@16/umd/react.development.js"
	crossorigin></script>

<script
	src="https://unpkg.com/react-dom@16/umd/react-dom.development.js"
	crossorigin></script>

<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>

<script type="text/babel" src="js/new_react.js" defer></script>

<script src="https://unpkg.com/axios/dist/axios.min.js"></script>


</head>


<body>

	<nav>

			<form class="form-inline">

				<Button
					class="btn btn-outline-success my-2 my-sm-0"
					type="submit" name="blist" formmethod="post"
					formaction="http://localhost:8081/Customer">Display
					Customers</Button>
					
					
					
				<Button
					class="btn btn-outline-success my-2 my-sm-0"
					type="submit" name="blist" formmethod="get"
					formaction="http://localhost:8081/Customer">Display 
					Customer Using React Button</Button>

				<Button
					class="btn btn-outline-success my-2 my-sm-0"
					type="submit" name="blist" formmethod="post"
					formaction="http://localhost:8081/Bike">Display Bikes</Button>

				<Button
					class="btn btn-outline-success my-2 my-sm-0"
					type="submit" name="blist" formmethod="post"
					formaction="http://localhost:8081/CustomerBike">Display
					Customer Bikes</Button>

			</form>

	</nav>


	<div id="react-container"></div>

</body>
</html>