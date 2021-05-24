import './App.css';
import React from 'react'
import LogIn from './LogIn'
import BreweryContainer from './containers/BreweryContainer'
import newUserForm from './components/newUserForm'

import {
  BrowserRouter as Router,
  Switch,
  Route,
  Link,
  BrowserRouter,
  // Redirect
} from "react-router-dom";

class App extends React.Component {

  state = {
    allBreweries: []
  }

  handleLogIn = (e) => {
    e.preventDefault()
    let user = {
      email: e.target[0].value,
      password: e.target[1].value
    }

    let reqPackage = {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': `Bearer ${localStorage.token}`
      },
      body: JSON.stringify({ auth: user })
    }

    fetch('http://localhost:3000/api/v1/login', reqPackage)
      .then(res => res.json())
      .then(data => {
        console.log(data)
        localStorage.setItem('token', data.token)
      })
  }

  componentDidMount() {
    console.log('component mounted')
    this.getBreweries()
  }

  getBreweries = () => {
    fetch('http://localhost:3000/api/v1/brewerieslist', {
      method: 'GET',
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json'
      }
    })
      .then(res => res.json())
      .then(data => this.setState({
        allBreweries: data
      }))
  }

  newUser = () => {
    fetch('http://localhost:3000/api/v1/users')
      .then(res => res.json())
      .then(data => console.log(data))
  }




  render() {
    return (
      <div>
        < BrowserRouter >
          <nav>
            <ul>
              <li>
                <Link to='/login'>LogIn</Link>
              </li>
              <li>
                <Link to='/breweries'>Breweries</Link>
              </li>
              <li>
                <Link to='/newUser'>Create Profile</Link>
              </li>
            </ul>
          </nav>

          <Switch>
            <Route exact path='/login'>
              <LogIn handleLogIn={this.handleLogIn} />
            </Route>
            <Route exact path='/breweries'>
              <BreweryContainer allBreweries={this.state.allBreweries} />
            </Route>
            <Route exact path='/newUser'>
              <newUserForm newUser={this.newUser} />
            </Route>
          </Switch>

        </BrowserRouter >
      </div>
    );
  }
}
export default App;