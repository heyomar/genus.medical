import $ from 'jquery'

function string () {
	function getParameterByName(name, url) {
		if (!url) url = window.location.href
		name = name.replace(/[\[\]]/g, '\\$&')
		var regex = new RegExp('[?&]' + name + '(=([^&#]*)|&|#|$)'),
			results = regex.exec(url)
		if (!results) return null
		if (!results[2]) return ''
		return decodeURIComponent(results[2].replace(/\+/g, ' '))
	}

	function removeAllSpaces (str) {
		str = str.replace(/\s+/g, '-')
		return str
	}

	$(document).ready(function () {
		if ($('body').hasClass('request-product-information')) {
			let queryCat = getParameterByName('cat', window.location.href).toLowerCase()
			queryCat = removeAllSpaces(queryCat)

			$('input[type=checkbox]').each(function () {
				console.log($(this).val())
				if ($(this).val() === queryCat) {
					$(this).prop('checked', true)
				}
			})
		}
	})
}// END MAIN FUNCTION

export default string
