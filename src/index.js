import './scss/index.scss'

// React
import React from 'react'
import { render } from 'react-dom'

// Routing
import { BrowserRouter as Router } from 'react-router-dom'

import App from './js/apps/CoreApp/index.js'
import * as serviceWorker from './serviceWorker'

render(<Router><App/></Router>, document.getElementById('root'))

serviceWorker.unregister()
