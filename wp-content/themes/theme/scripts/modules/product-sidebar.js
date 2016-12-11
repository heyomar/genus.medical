import $ from 'jquery'

function rest () {
	if ($('body').hasClass('single-product') || $('body').hasClass('how-to-buy') || $('body').hasClass('category')) {
		// Populate sidebar list of products
		$.ajax({
			url: '/wp-json/wp/v2/categories?filter[cat]=3',
			success: function (data) {
				$.each(data, function (i, val) {
					if (val['parent'] === 3) {
						let contrastName = val['name']
						contrastName = contrastName.replace(/\s+/g, '').toLowerCase()
						let contrastCatName = $('.hidden-cat').text()
						contrastCatName = contrastCatName.replace(/\s+/g, '').toLowerCase()
						if (contrastCatName === contrastName) {
							$('.oral-contrast').append('<li class="sidebar-caret"><a href="/oral-contrast/#' + contrastName + '">' + val['name'] + '</li>')
						} else {
							$('.oral-contrast').append('<li><a href="/oral-contrast/#' + contrastName + '">' + val['name'] + '</li>')
						}

						console.log(contrastCatName)
					} else if (val['parent'] === 4) {
						let injectorName = val['name']
						const cleanInjectorName = injectorName.replace(/\s+/g, '-').toLowerCase()
						injectorName = injectorName.replace(/&amp;/g, '&')
						const catPageName = $('.content .title').text()
						if (catPageName === injectorName) {
							$('.power-injector').append('<li class="sidebar-caret"><a href="/category/syringes/' + cleanInjectorName + '">' + val['name'] + '</li>')
						} else {
							$('.power-injector').append('<li><a href="/category/syringes/' + cleanInjectorName + '">' + val['name'] + '</li>')
						}
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
