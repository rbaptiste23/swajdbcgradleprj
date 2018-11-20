//'use strict';



const e = React.createElement;

class LikeButton extends React.Component {
  constructor(props) {
    super(props);
    this.state = { liked: false };
  }

  render() {
    if (this.state.liked) {
      return 'You liked this.';
    }  

  return e(
  'div' ,
  { onClick: () => this.setState({ liked: true }),  },
  'React Button'
);
     
  }
}

//function Sum(props) {
//	return e (
//	   'h1', 
//	  {props.a} + {props.b} + {props.c} = {props.a + props.b + props.c} ,
//	   'Title text'
//	);
//	
//}

const domContainer = document.querySelector('#like_button_container');
ReactDOM.render(e(LikeButton), domContainer);


//ReactDOM.render(e(Sum a={3} b={4} c={5}) />, document.querySelector('#root') );
