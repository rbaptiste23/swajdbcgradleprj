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

	<div id="root1"></div>	
	<div id="root2"></div>
	<div id="root3"></div>			
    <div id="root4"></div>    
    <div id="root5"></div>
 
	<!--  ReactDOM.render( React.createElement('h1', null, 'Hello World'), document.getElementById('root') )-->


	<script type="text/babel">
      
     class Hello extends React.Component{
       render() {
                
           return (<div>  
                     <h1 className="btn btn-outline-success my-2 my-sm-0">Hello {this.props.firstName} </h1> 
                     <p className="btn btn-outline-success my-2 my-sm-0">Learning React Version {this.props.version} </p>
                   </div>
                  )   
               }	
      }

      class Checkbox extends React.Component {
             constructor(props) { 
                 super(props)
                 this.state = { 
                   checked: true 
                }
                 this.handleCheck = this.handleCheck.bind(this) 
              }     

          handleCheck() { 
              this.setState({
                checked: !this.state.checked 
              })
 
          }
    


         render() { 
             var msg 
             if (this.state.checked) { 
               msg = "checked"
       
                } else { 

               msg = "not checked" 
               }
             return (<div> 
                      <input type = "checkbox" className="btn btn-outline-success my-2 my-sm-0" onChange={this.handleCheck} defaultChecked = {this.state.checked} />
                       <p className="btn btn-outline-success my-2 my-sm-0">This box is {msg} </p>  
                     </div>)   
           }
   

       }



      const HelloStateless = () => <h1 className="btn btn-outline-success my-2 my-sm-0">Hello</h1> 

      const Sum = (props) => <h1 className="btn btn-outline-success my-2 my-sm-0">{props.a} +  {props.b} = {props.a + props.b} </h1> 
 
      const Summary = ({a}) => <h1 className="btn btn-outline-success my-2 my-sm-0"> {a} +  {a} = {a + a} </h1> 
 



      ReactDOM.render( <Summary a={3} b={2} />, document.getElementById('root1'))
      
      ReactDOM.render( <Sum a={3} b={2} />, document.getElementById('root2'))
      
      ReactDOM.render( <Hello firstName="Riley" version = {17} />, document.getElementById('root3'))

      ReactDOM.render( <Checkbox />, document.getElementById('root4'))

      ReactDOM.render( <HelloStateless />, document.getElementById('root5'))

	</script>
	
	
	<!-- Load our React component. -->
	<script src="js/like_button.js"></script>
	




	


</body>
</html>