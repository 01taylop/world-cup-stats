import './scss/index.scss'

// React
import React from 'react'
import { render } from 'react-dom'

import App from './js/apps/CoreApp/index.js'
import * as serviceWorker from './serviceWorker'

render(<App />, document.getElementById('root'))

serviceWorker.unregister()
