/* eslint-disable react/no-multi-comp */
import React from 'react'

import HomeIcon from '@material-ui/icons/Home'
import TableIcon from '@material-ui/icons/FormatListNumbered'
import TeamIcon from '@material-ui/icons/Group'
import PlayersIcon from '@material-ui/icons/Person'
import SettingsIcon from '@material-ui/icons/Settings'

export const ROUTES = [{
  component: () => <p>Home</p>,
  exact: true,
  icon: <HomeIcon/>,
  title: 'Home',
  url: '/',
}, {
  component: () => <p>Rankings</p>,
  icon: <TableIcon/>,
  title: 'Rankings',
  url: '/ranking',
}, {
  component: () => <p>Teams</p>,
  icon: <TeamIcon/>,
  title: 'Teams',
  url: '/teams',
}, {
  component: () => <p>Players</p>,
  icon: <PlayersIcon/>,
  title: 'Players',
  url: '/players',
}, {
  section: true,
}, {
  component: () => <p>Settings</p>,
  icon: <SettingsIcon/>,
  title: 'Settings',
  url: '/settings',
}]
