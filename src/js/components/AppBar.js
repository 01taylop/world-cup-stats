import React from 'react'
import PropTypes from 'prop-types'

import MenuIcon from '@material-ui/icons/Menu'

export default class AppBar extends React.PureComponent {

  static propTypes = {
    onToggleMenu: PropTypes.func,
    title: PropTypes.string.isRequired,
  }

  render() {
    const { onToggleMenu, title } = this.props

    return (
      <header className='appbar'>
        <button type='button' onClick={onToggleMenu}>
          <MenuIcon/>
          <div className='visually-hidden'>Menu</div>
        </button>
        <h1>{title}</h1>
      </header>
    )
  }

}
