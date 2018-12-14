//'use strict';  
//
////class Hello extends React.Component{
////       render() {
////                
////           return (<div>  
////                     <h1 className="btn btn-outline-success my-2 my-sm-0">Hello {this.props.firstName} </h1> 
////                     <p className="btn btn-outline-success my-2 my-sm-0">Learning React Version {this.props.version} </p>
////                   </div>
////                  )   
////               }	
////      }
//
//const e = React.createElement;
//
//
//class LikeButton extends React.Component {
//	  constructor(props) {
//	    super(props);
//	    this.state = { liked: false };
//	  }
//
//	  render() {
//	    if (this.state.liked) {
//	      return 'You liked this.';
//	    }  
//
//	  return e(
//	  'div' ,
//	  { onClick: () => this.setState({ liked: true }),  },
//	  'React Button'
//	);
//	     
//	  }
//	}


//
//      class Checkbox extends React.Component {
//             constructor(props) { 
//                 super(props)
//                 this.state = { 
//                   checked: true 
//                }
//                 this.handleCheck = this.handleCheck.bind(this) 
//              }     
//
//          handleCheck() { 
//              this.setState({
//                checked: !this.state.checked 
//              })
// 
//          }
//    
//         render() { 
//             var msg 
//             if (this.state.checked) { 
//               msg = "checked"
//       
//                } else { 
//
//               msg = "not checked" 
//               }
//             return (<div> 
//                      <input type = "checkbox" className="btn btn-outline-success my-2 my-sm-0" onChange={this.handleCheck} defaultChecked = {this.state.checked} />
//                       <p className="btn btn-outline-success my-2 my-sm-0">This box is {msg} </p>  
//                     </div>)   
//           }
//       }


//      const HelloStateless = () => <h1 className="btn btn-outline-success my-2 my-sm-0">Hello</h1> 
//
//      const Sum = (props) => <h1 className="btn btn-outline-success my-2 my-sm-0">{props.a} +  {props.b} = {props.a + props.b} </h1> 
// 
//      const Summary = ({a}) => <h1 className="btn btn-outline-success my-2 my-sm-0"> {a} +  {a} = {a + a} </h1> 
// 
//
//      ReactDOM.render( <Summary a={3} b={2} />, document.getElementById('root1'))
//      
//      ReactDOM.render( <Sum a={3} b={2} />, document.getElementById('root2'))
//      
//      ReactDOM.render(React.createElement(Hello firstName="Riley" version = {17}), document.getElementById('root3'))
//
//      ReactDOM.render( <Checkbox />, document.getElementById('root4'))

//      const domContainer = document.querySelector('#root4');
//      ReactDOM.render( e(Checkbox), domContainer)
      

