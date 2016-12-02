import $ from 'jquery'

function syringeCategories () {
	if ($('body').hasClass('syringes')) {
		// Populate syringe landing with categories
		$.ajax({
			url: '/wp-json/wp/v2/categories?filter[cat]=3',
			success: function (data) {
				$.each(data, function (i, val) {
					if (val['parent'] === 4) {
						$('#categoriesRow').append('<div class="card col-xs-12 col-sm-4"><div class="med-sm"><div class="image"><a href=""><span class="label">' + val['name'] +
						'</span<</a></div></div></div>')
					} else {}
				})
			},
			error: function () {
				console.log('There is an error with the rest function')
			}
		})
	} else {}
}

export default syringeCategories
