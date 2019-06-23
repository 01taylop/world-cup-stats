import React from 'react'

import AppBar from '../../components/AppBar'
import Flag from '../../components/Flag'
import Sidebar from '../../components/Sidebar'

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
    const { isMenuOpen } = this.state

    return (
      <>
        <AppBar title='World Cup Stats' onToggleMenu={this.toggleMenu}/>
        <Sidebar open={isMenuOpen}>
          <p>Hello</p>
        </Sidebar>
        <div className='content'>
          <p>This is my app</p>
          <p>isMenuOpen: {this.state.isMenuOpen ? 'true' : 'false'}</p>
          <Flag code='br' name='Brazil' height={20}/>
        </div>
      </>
    )
  }

}
