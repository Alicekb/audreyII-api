import React, { Component } from 'react';
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

export default class VerticalMenu extends Component {
  handleLogout = () => {
    this.props.logout()
  }

  render() {
    return(
      <div className='printing-display' >
        {
          this.props.loggedIn ?
            <div className='ui vertical menu' style={navContainer}>
              <div style={nav}>
                <h4><Link to='/welcome'>Home</Link></h4>
                <h4><Link to='/calendar'>Calendar</Link></h4>
                <h4><Link to='/' onClick={this.handleLogout}>Log Out</Link></h4>
              </div>
            </div> :
            null
        }
      </div>

    )
  }
}