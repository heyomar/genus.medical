'use strict'

import $ from 'jquery'
window.jQuery = window.$ = $

import lity from 'lity'
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
