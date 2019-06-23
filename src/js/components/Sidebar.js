import React from 'react'
import PropTypes from 'prop-types'
import classNames from 'classnames'

export default class Sidebar extends React.PureComponent {

  static propTypes = {
    children: PropTypes.node.isRequired,
    // eslint-disable-next-line react/boolean-prop-naming
    open: PropTypes.bool,
  }

  static defaultProps = {
    open: false,
  }

  render() {
    const { children, className, open, ...other } = this.props

    const sidebarClass = classNames('sidebar', className, {
      open,
    })

    return <nav role='navigation' className={sidebarClass} {...other}>{children}</nav>
  }

}
