import React from 'react';

class Calculator extends React.Component{
  constructor(props){
    super(props);
    this.state = {
      result: 0,
      num1: "",
      num2: ""
    }
    this.setNum1 = this.setNum1.bind(this);
    this.setNum2 = this.setNum2.bind(this);
    this.add = this.add.bind(this);
    this.subtract = this.subtract.bind(this);
    this.multiply = this.multiply.bind(this);
    this.divide = this.divide.bind(this);
    this.clear = this.clear.bind(this);
  }

  setNum1(e) {
    console.log(e.target.value);
    // debugger;
    const num1 = parseInt(e.target.value)
    this.setState({ num1 }, () => {debugger});
    // console.log(this.state, () => de)
  }

  setNum2(e) {
    console.log(e.target.value)
    const num2 = parseInt(e.target.value)
    this.setState({ num2 });
    console.log(this.state)
  }

  add(e) {
    e.preventDefault();
    console.log(this.num1);
    console.log(this.num2);
    const result = this.state.num1 + this.state.num2;
    this.setState({result});
  }

  subtract(e) {
    e.preventDefault();
    const result = this.num1 - this.num2;
    this.setState({result});
  }

  multiply(e) {
    e.preventDefault();
    const result = this.num1 * this.num2;
    this.setState({result});
  }

  divide(e) {
    e.preventDefault();
    const result = this.num1 / this.num2;
    this.setState({result});
  }

  clear(e) {
    e.preventDefault();
    this.setState({
      result: 0,
      num1: "",
      num2: ""
    })
  }

  render(){
    const { result, num1, num2 } = this.state
    return (
      <div>
        <h1>Hello World</h1>
        <h1>{result}</h1>
        <input onChange={this.setNum1} value={num1} />
        <input onChange={this.setNum2} value={num2} />
        <br />
        <button onClick={this.add}>+</button>
        <button onClick={this.subtract}>-</button>
        <button onClick={this.multiply}>x</button>
        <button onClick={this.divide}>/</button>
        <button onClick={this.clear}>Clear</button>
      </div>
    );
  }
}

export default Calculator;
