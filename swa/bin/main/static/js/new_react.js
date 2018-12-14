const Banner = () => (
		
		<div className="btn btn-outline-success my-2 my-sm-0"> 
		  <h1>Welcome to React </h1>
		  <p>Have fun!</p>
        </div> 
) 




class Checkbox extends React.Component{
	
	constructor(props){
		super(props)
		this.state = {
			checked: true
		}	
		
		// Keep this in scope so it will know which checkbox is being clicked. 
		this.handleCheck = this.handleCheck.bind(this)
		
	}
	
	//All function must be bound to the class to stay in scope...
	handleCheck() {
		this.setState({
			checked: !this.state.checked 
		})
		
	
	}
	
	
	render() {
		var msg 
		
		if (this.state.checked){
			msg = "checked"
		} else {
			msg = "not checked"
		}
		
		
		return (
		  <div> 
		     <input type = "checkbox" 
		    	 defaultChecked={this.state.checked}    
		    	 onChange={this.handleCheck}/>
		     <p> this box is {msg}  </p>		  
		  </div>
		
		)
	}
}

 

class SumNote extends React.Component {
 
	constructor(props){
		super(props)
		this.state = {sum: 0}
		this.add = this.add.bind(this)
		this.subtract = this.subtract.bind(this)		 
	}		         
		
	
add() {
	var sumValues = this.props.a + this.props.b
	this.setState({
		sum: sumValues
	})       
}
	

	subtract() {
		var subValues = this.props.a - this.props.b
		this.setState({
			sum: subValues
		})
	}
		
	render(){	
		return(

		  <span className="btn btn-outline-success my-2 my-sm-0 ">
		   <button className="btn btn-outline-success my-2 my-sm-0 text-center" onClick={this.add} id="add"> {this.props.a} </button> 
		   <button className="btn btn-outline-success my-2 my-sm-0 text-center" onClick={this.add} id="add"> + </button>
		   <button className="btn btn-outline-success my-2 my-sm-0 text-center" onClick={this.subtract} id="subtract"> - </button> 
		   <button className="btn btn-outline-success my-2 my-sm-0 text-center" onClick={this.subtract} id="subtract"> {this.props.b} </button>
		   <button className="btn btn-outline-success my-2 my-sm-0 text-center"> The total is = {this.state.sum} </button> 
		  </span> 
		)
	}	
}





class App extends React.Component{

	render() {
		return(
		  <div> 		
		   <Banner />
		   <SumNote a={15} b={3} />               
		   <Checkbox /> 
		  
		  </div> 		
		)
	}
}



ReactDOM.render(<App /> , document.getElementById('react-container'))
	 

