<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<!-- Load React. -->
<!-- Note: when deploying, replace "development.js" with "production.min.js". -->
<script src="https://unpkg.com/react@16/umd/react.development.js"
	crossorigin></script>
<script
	src="https://unpkg.com/react-dom@16/umd/react-dom.development.js"
	crossorigin></script>

<script src="https://unpkg.com/babel-standalone@6.15.0/babel.min.js"></script>


<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>






	<nav class="navbar navbar-light bg-light">
		<form class="form-inline">

			<Button class="btn btn-outline-success my-2 my-sm-0" type="submit"
				name="blist" formmethod="post"
				formaction="http://localhost:8081/Customer">Display
				Customers</Button>

			<Button class="btn btn-outline-success my-2 my-sm-0" type="submit"
				name="blist" formmethod="post"
				formaction="http://localhost:8081/Bike">Display Bikes</Button>

			<Button class="btn btn-outline-success my-2 my-sm-0" type="submit"
				name="blist" formmethod="post"
				formaction="http://localhost:8081/CustomerBike">Display
				Customer Bikes</Button>

			<Button class="btn btn-outline-success my-2 my-sm-0"
				id="like_button_container"></Button>



		</form>
	</nav>

	<div id="root"></div>

	<!--  ReactDOM.render( React.createElement('h1', null, 'Hello World'), document.getElementById('root') )-->


	<script type="text/babel">
      
     const Banner = () => 
           ( 
              <div>
                <h1 className="btn btn-outline-success my-2 my-sm-0">Welcome to React</h1>
                <p className="btn btn-outline-success my-2 my-sm-0">Have fun!</p>
             
              </div>
          )
     
	 ReactDOM.render( <Banner />, document.getElementById('root'))
	 
	</script>




	<!-- Load our React component. -->
	<script src="js/like_button.js"></script>


</body>
</html>