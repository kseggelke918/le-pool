import React, { Component } from 'react';
import './App.css';
import Games from './components/games.js'
import Players from './components/players.js'

class App extends Component {
  render () {
    return (
      <div className='welcome_page_header'>
        <h1>Le Pool</h1>
        <h3>Established: 2009</h3>
        <h3>Stillwater, MN</h3>
        <Games />
        <Players />
        <p>Click here to sign up</p>
        <p>Login: enter email</p>
      </div>
    )
  }
}

export default App;
