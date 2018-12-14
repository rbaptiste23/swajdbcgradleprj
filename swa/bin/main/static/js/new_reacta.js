class SumNote extends React.Component {
         
	constructor(props) {
		super(props);
		this.state = {
		   customerdata: [],
		};
	}

		
	componentDidMount() {
		
		const url = `http://localhost:8081/CustomerRest`;
		
		axios.get(url)
		  .then((response) => {
			
			  this.setState({
				  customerdata: response.data
			  })
			  
		  })
		  .catch((error) => console.log(error)); 
	}
	

	renderCustomers() {
	  
		const myTblRows = this.state.customerdata.map((cust) => (
				
		   
	    <tr> 
		  <td> {cust.customerId} </td> 
	      <td> {cust.email} </td> 
		  <td> {cust.name} </td> 
		  <td> {cust.phone} </td> 
		  <td> {cust.ssi} </td> 
		</tr> 
		
		))
		
		
		const myTblHeader = <table><th>Customer Id</th><th>email</th><th>Name</th><th>Phone</th><th>SSI</th>
		
		const myTblEnd = </table> 
		
		return ( 
				<table align ="center" className="table table-sm table-bordered table-hover"><th>Customer Id</th><th>Email</th><th>Name</th><th>Phone</th><th>SSI</th>
				  {myTblRows}
				 </table> 		
		);
	}
	
	
	render() {	
		return(
		   <div> 
		    {this.renderCustomers()}
		   </div> 
		)
	}	
}



class App extends React.Component{

	render() {
		return(
		  <div> 					  
		       <SumNote />
		  </div> 		
		)
	}
}



ReactDOM.render(<App /> , document.getElementById('react-container'))
	 

