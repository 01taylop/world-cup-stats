import React from 'react'
import { NavLink, Route, Redirect, Switch } from 'react-router-dom'

import AppBar from '../../components/AppBar'
import Flag from '../../components/Flag'
import Sidebar from '../../components/Sidebar'

import { ROUTES } from '../../config/routes'

export default class App extends React.Component {

  state = {
    isMenuOpen: false,
  }

  toggleMenu = () => {
    this.setState(prevState => ({
      isMenuOpen: !prevState.isMenuOpen,
    }))
  }

  navItemsAndRoutes() {
    const data = {
      navItems: [],
      routes: [],
    }

    ROUTES.forEach((route, index) => {
      if (route.section) {
        data.navItems.push(<hr key={index}/>)
      }
      if (route.url) {
        const navLinkProps = {
          exact: route.exact,
          key: index,
          to: route.url,
        }
        data.navItems.push(<NavLink {...navLinkProps}>{route.icon}{route.title}</NavLink>)
        data.routes.push(<Route key={index} path={route.url} exact={route.exact} component={route.component}/>)
      }
    })

    return data
  }

  render() {
    const { isMenuOpen } = this.state

    const { navItems, routes } = this.navItemsAndRoutes()

    return (
      <>
        <AppBar title='World Cup Stats' onToggleMenu={this.toggleMenu}/>
        <Sidebar open={isMenuOpen}>{navItems}</Sidebar>
        <div className='content'>
          <Switch>
            {routes}
            <Redirect from='*' to='/'/>
          </Switch>
          <p>This is my app</p>
          <p>isMenuOpen: {this.state.isMenuOpen ? 'true' : 'false'}</p>
          <Flag code='br' name='Brazil' height={20}/>
        </div>
      </>
    )
  }

}
