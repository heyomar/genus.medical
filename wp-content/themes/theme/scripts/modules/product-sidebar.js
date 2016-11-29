import $ from 'jquery'

function rest () {
	if ($('body').hasClass('single-product') || $('body').hasClass('how-to-buy')) {
		// Populate sidebar list of products
		$.ajax({
			url: 'http://gmt.dev/wp-json/wp/v2/categories?filter[cat]=3',
			success: function (data) {
				$.each(data, function (i, val) {
					if (val['parent'] === 3) {
						$('.oral-contrast').append('<li>' + val['name'] + '</li>')
					} else if (val['parent'] === 4) {
						$('.power-injector').append('<li>' + val['name'] + '</li>')
					}
				})
			},
			error: function () {
				console.log('There is an error with the rest function')
			}
		})
	} else {}
}

export default rest
