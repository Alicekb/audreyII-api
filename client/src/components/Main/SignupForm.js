import React, { Component } from 'react';
import { Link } from 'react-router-dom';

export default class SignupForm extends Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: ''
    }
  }

  onChange(e) {
    this.setState ({
      [e.target.name]: e.target.value
    });
  }

  onSubmit(e) {
    e.preventDefault();
    console.log(this.state);
  }

  render() {
    return (
      <form 
        className='ui form fluid container' 
        style={{padding: '2em', color: '#83B692'}}
        onSubmit={this.onSubmit.bind(this)}
      >
        <div className='field'>
          <label>Email:</label>
          <input 
            placeholder='audrey2@fake.com' 
            name='email'
            onChange={this.onChange.bind(this)}
          />
        </div>
        
        <div className='field'>
          <label>Password</label>
          <input type='password'
            name='password'
            onChange={this.onChange.bind(this)}
          />
        </div>

        <button type='submit' className='ui button'>Sign-up</button>
        <h4><Link to='/loggedin' classname='item'>Login instead</Link></h4>
      </form>
    );
  }
}