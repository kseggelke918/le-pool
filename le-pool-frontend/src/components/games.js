import React, { Component } from "react";

class Games extends Component {

  constructor(props){
    super(props);
    this.state = {games: []};
  }

  render() {
    let games = this.state.games.map(game => game.game_name);

    return <div>{games.join(`, `)}</div>;
  }
  
  async componentDidMount(){
    console.log("mounted");
    let data = await getData(`http://localhost:3000/api/games.json?sort=id`);
    console.log(data);
    // set this.state.games = data
    this.setState({games: data})
  }

}


// putting async in front of the function means that whatever calls me is going to have to wait
async function getData(url) {
  // response should be the fetch - await means that we are going to stop and wait for the fetch
  // await only works if async is in front of the function
  // await turns the promise into the thing that it resolves to
  let response = await fetch(url); 
  let json = await response.json();

  return json.data; 
}

export default Games;
