import React, { Component } from "react";
import ReactDOM from "react-dom";
import "./App.css";
import Games from "./components/games.js";
import Nav from "./components/nav.js";
import Players from "./components/players.js";
import Signup from "./components/signup.js";
import Login from "./components/login.js";
import { BrowserRouter as Router, Route, Switch } from "react-router-dom";

class App extends Component {
  render() {
    return (
      <Router>
        {/* Nav is outside the Switch, so it'll always show up. Same with the random copy. I put it on a separate page for org reasons; the App.js gets huge and clunky.*/}
        <Nav />
        <div className="welcome_page_header">
          <h1>Le Pool</h1>
          <h3>Established: 2009</h3>
          <h3>Stillwater, MN</h3>
          <br />
          {/* Switch stops the browser from just going through all the Routes and rendering all the componets. With Switch, as soon as a path matches, it'll stop and go there. */}
          <Switch>
            {/* '/' gets exact, because otherwise it would render in place of ALL routes, since they all contain it. This way it doesn't matter what order these Routes are in. */}
            <Route path="/" exact component={Login} />
            <Route path="/signup" component={Signup} />
            <Route path="/players" component={Players} />
            <Route path="/games" component={Games} />
          </Switch>
        </div>
      </Router>
    );
  }
}

export default App;
