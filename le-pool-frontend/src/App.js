import React, { Component } from 'react';
import './App.css';

class App extends Component {
  render () {
    return (
      <div className='welcome_page_header'>
        <h1>Le Pool</h1>
        <h3>Established: 2009</h3>
        <h3>Stillwater, MN</h3>
        <p>Click here to view all games (goes to games component)</p>
        <p>Click here to go to all players (goes to players component)</p>
        <p>Click here to sign up</p>
        <p>Login: enter email</p>
      </div>
    )
  }
}

export default App;
