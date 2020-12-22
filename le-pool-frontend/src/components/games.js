import React, { Component } from "react";

class Games extends Component {

  constructor(props){
    super(props);
    this.state = {games: []};
  }

  render() {
    let games = this.state.games;
    return <div>This would be all the games  </div>;
  }
  
  async componentDidMount(){
    console.log("mounted");
    let data = await getData(`http://localhost:3000/api/games?sort=id`);
    console.log(data);
    // set this.state.games = data
    this.setState({games: data})
  }

}


// putting async in front of the function means that whatever calls me is going to have to wait
async function getData(url) {
  // response should be the fetch - await means that we are going to stop and wait for the fetch
  // await only works if async is in front of the function
  let response = await fetch(url); 
  let json = await response.json();

  return json 
}

export default Games;
