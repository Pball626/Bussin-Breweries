import React, {Component} from 'react'

class newUserForm extends Component {
    
    handlesubmit=(e)=>{
        e.preventDefault()
        console.log('formsubmitted', this.props)
        this.props.newUser(this.state)
        // this.props.history.push('/breweries')
    }
    
    changeHandler=(e)=>{
        let {name, value} = e.target
        this.setState({
          [name]: value
        })
      }
    
    render() {
        return (

            <div className='wrapper'>
                <h1>Create New Profile Below</h1>
                <form onSubmit={this.handlesubmit}>
                    <p>Name</p>
                    <input type='text' name='name' placeholder='Enter Name Here' onChange={this.changeHandler} /> <br /> <br />
                    <p>Email</p>
                    <input type='number' name='email' placeholder='email' onChange={this.changeHandler} /> <br /> <br />
                    <p>Password</p>
                    <input type='text' name='password' placeholder='password' onChange={this.changeHandler} /> <br /> <br />
                    <p>Profile Picture</p>
                    <input type='text' name='picture' placeholder='Profile Picture' onChange={this.changeHandler} /> <br /> <br />
                    <p>Age</p>
                    <input type='text' name='age' placeholder='Age' onChange={this.changeHandler} /> <br /> <br />
                    <p>Hometown</p>
                    <input type='text' name='hometown' placeholder='Your Hometown' onChange={this.changeHandler} /> <br /> <br />
                    <input type="submit" name="submit" value="Create New Profile" className="submit" />
                </form>
            </div>
        )
    }
}
export default newUserForm;

