import React from 'react';
import { Link } from 'react-router-dom';

const nav = {
  paddingLeft: '1em',
  marginTop: '1em'
}

const navContainer = {
 float: 'left',
 margin: '0',
 width: '7%',
 background: '#fff',
 minHeight: '100vh'
}

const VerticalMenu = () => (
  <div className='ui vertical menu' style={navContainer}>
    <div style={nav}>
      <h4><Link to='/loggedin' classname='item'>Home</Link></h4>
      <h4><Link to='/week' classname='item'>Week</Link></h4>
      <h4><Link to='/planner' classname='item'>Planner</Link></h4>
      <h4><Link to='/calendar' classname='item'>Calendar</Link></h4>
      <h4><Link to='/' classname='item'>Log Out</Link></h4>
    </div>
  </div>
);

export default VerticalMenu;