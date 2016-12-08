import $ from 'jquery'

function rest () {
	if ($('body').hasClass('single-product') || $('body').hasClass('how-to-buy') || $('body').hasClass('category')) {
		// Populate sidebar list of products
		$.ajax({
			url: '/wp-json/wp/v2/categories?filter[cat]=3',
			success: function (data) {
				$.each(data, function (i, val) {
					if (val['parent'] === 3) {
						const contrastName = val['name']
						const cleanContrastName = contrastName.replace(/\s+/g, '').toLowerCase()
						$('.oral-contrast').append('<li><a href="/oral-contrast/#' + cleanContrastName + '">' + val['name'] + '</li>')
					} else if (val['parent'] === 4) {
						const injectorName = val['name']
						const cleanInjectorName = injectorName.replace(/\s+/g, '-').toLowerCase()
						$('.power-injector').append('<li><a href="/category/syringes/' + cleanInjectorName + '">' + val['name'] + '</li>')
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
