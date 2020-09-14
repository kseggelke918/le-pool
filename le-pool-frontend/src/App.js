import React, { Component } from 'react';
import './App.css';
import Games from './components/games.js'
import Players from './components/players.js'
import Signup from './components/signup.js'
import Login from './components/login.js'
import { BrowserRouter as Router, Route, Switch } from 'react-router-dom'

class App extends Component {
  render () {
    return (
      <Router>
        <div className='welcome_page_header'>
        <h1>Le Pool</h1>
        <h3>Established: 2009</h3>
        <h3>Stillwater, MN</h3>
        <Login />
        <Signup />
        <Games />
        <Players />
      </div>
      </Router>
      
    )
  }
}

export default App;
