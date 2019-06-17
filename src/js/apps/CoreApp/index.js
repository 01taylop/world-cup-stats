import React from 'react'

import AppBar from '../../components/AppBar'

export default class App extends React.Component {

  state = {
    isMenuOpen: false,
  }

  toggleMenu = () => {
    this.setState(prevState => ({
      isMenuOpen: !prevState.isMenuOpen,
    }))
  }

  render() {
    return (
      <>
        <AppBar title='Hello' onToggleMenu={this.toggleMenu}/>
        <p>This is my app</p>
        <p>isMenuOpen: {this.state.isMenuOpen ? 'true' : 'false'}</p>
      </>
    )
  }

}
