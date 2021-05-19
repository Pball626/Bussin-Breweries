import './App.css';
import React from 'react'
import LogIn from './LogIn'

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
      body: JSON.stringify(user)
    }

    fetch('http://localhost:3000/api/v1/login', reqPackage)
      .then(res => res.json())
      .then(data => {
        localStorage.setItem('token', data.token)
      })
  }

  render() {
    return (
      <div>
        <p>hello</p>
         < BrowserRouter >
           <nav>
             <ul>
               <li>
                 <Link to='/login'>LogIn</Link>
               </li>
             </ul>
           </nav>
           <Switch>
             <Route exact path='/login'>
               <LogIn handleLogIn={this.handleLogIn} />
             </Route>
           </Switch>
        
         </BrowserRouter >
        </div>
    );
  }
}
export default App;