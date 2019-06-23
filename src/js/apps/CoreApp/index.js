import React from 'react'

import AppBar from '../../components/AppBar'
import Flag from '../../components/Flag'
import Sidebar from '../../components/Sidebar'

import HomeIcon from '@material-ui/icons/Home'
import TableIcon from '@material-ui/icons/FormatListNumbered'
import TeamIcon from '@material-ui/icons/Group'
import PlayersIcon from '@material-ui/icons/Person'
import SettingsIcon from '@material-ui/icons/Settings'

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
          <a href='/'><HomeIcon/>Home</a>
          <a href='/'><TableIcon/>Table</a>
          <a href='/'><TeamIcon/>Teams</a>
          <a href='/'><PlayersIcon/>Players</a>
          <hr/>
          <a href='/'><SettingsIcon/>Settings</a>
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
