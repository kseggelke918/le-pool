import React, { Component } from "react";
import { Link } from "react-router-dom";

export default class Nav extends Component {
  render() {
    return (
      <div className="nav">
        <ul className="nav-links">
          <li>
            <Link to="/">Home</Link>
          </li>
          <li>
            <Link to="/games">All Games</Link>
          </li>
          <li>
            <Link to="/players">All Players</Link>
          </li>
        </ul>
      </div>
    );
  }
}
