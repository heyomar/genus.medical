'use strict'

import $ from 'jquery'
window.jQuery = window.$ = $

/* eslint-disable */
import lity from 'lity'
/* eslint-enable */
import sidebar from './modules/product-sidebar'
import navigation from './modules/navigation'
import locations from './modules/locations'
import gallery from './modules/gallery'
import strings from './modules/strings'

navigation()
gallery()
sidebar()
locations()
strings()
