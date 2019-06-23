import React from 'react'
import PropTypes from 'prop-types'

import WorldFlag from 'react-world-flags'

export default class Flag extends React.PureComponent {

  static propTypes = {
    code: PropTypes.string,
    name: PropTypes.string,
  }

  render() {
    const { code, name } = this.props

    return <WorldFlag code={code} title={name} height='60'/>
  }

}
