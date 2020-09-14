import React, { Component } from 'react';

class Login extends Component {
    render() {
        return (
            <div>
                <form>
                    Login: <input placeholder="email" name='email' type='text' />
                </form> 
            </div>
        )
    }
}

export default Login