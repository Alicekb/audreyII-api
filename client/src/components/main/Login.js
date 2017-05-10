import React from 'react';
import { Link } from 'react-router-dom';

const Signin = () => (
  <form className='ui form fluid container' style={{padding: '2em', color: '#83B692'}}>
    <div className='field'>
      <label>Email:</label>
      <input placeholder='Email' />
    </div>
    
    <div className='field'>
      <label>Password</label>
      <input type='password'/>
    </div>
    <button type='submit' className='ui button'>Login</button>
     <h4><Link to='/loggedin' classname='item'>Sign-up instead</Link></h4>
  </form>
);

export default Signin;