import $ from 'jquery'

function string () {
	/* eslint-disable */
	function getParameterByName(name, url) {
		if (!url) url = window.location.href
		name = name.replace(/[\[\]]/g, '\\$&')
		var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
			results = regex.exec(url)
		if (!results) return null
		if (!results[2]) return ''
		return decodeURIComponent(results[2].replace(/\+/g, ' '))
	}
	/* eslint-enable */
	function convertSpecialCharacters (str) {
		str = str.replace('-', ' ')
		return str
	}

	$(document).ready(function () {
		if ($('body').hasClass('request-product-information')) {
			let queryCat = getParameterByName('cat', window.location.href)
			queryCat = convertSpecialCharacters(queryCat)
			//console.log(queryCat)

			$('input[type=checkbox]').each(function () {
				const checkbox = $(this).val()
				if (checkbox === queryCat) {
					$(this).prop('checked', true)
				}
			})
		}

		if ($('body').hasClass('page-template-template-product-landing')) {
			$('.product-link').each(function () {
				let productLink = $(this).attr('href')
				productLink = productLink.replace('™', ' ')
				productLink = productLink.replace('&trade;', '')
				productLink = productLink.replace('&#153;', '')
				productLink = productLink.replace('  ', '')
				productLink = productLink.replace('  ', '')
				productLink = productLink.replace(' ', '')
				$(this).attr('href', productLink)
				//console.log(productLink)
			})
		}
	})
}// END MAIN FUNCTION

export default string
