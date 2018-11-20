'use strict';



const e = React.createElement;

//class LikeButton extends React.Component {
//  constructor(props) {
//    super(props);
//    this.state = { liked: false };
//  }
//
//  render() {
//    if (this.state.liked) {
//      return 'You liked this.';
//    }  
//
//  return e(
//  'div' ,
//  { onClick: () => this.setState({ liked: true }),  },
//  'React Button'
//);
//     
//  }
//}

function Sum(props) {
	return (
	
	   <h1>{props.a} + {props.b} + {props.c} = {props.a + props.b + props.c} </h1>
	);
	
}

//const domContainer = document.querySelector('#like_button_container');
//ReactDOM.render(e(LikeButton), domContainer);

const domContainer = document.querySelector('#root');
ReactDOM.render(<Sum a={3} b={2} c={9} />, domContainer);

