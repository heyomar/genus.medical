import $ from 'jquery'

function navigation () {
	// add carets to mobile nav items on hover
	$('.dropdown li').hover(function () {
		$(this).toggleClass('caret')
	})

// mobile nav activation and fullscreen lock
	$('.handle').on('click touchend', function () {
		if ($('.open')[0]) {
			$('.dropdown').removeClass('open')
			$('.dropdown').slideUp()
			$('body').css('overflow', 'scroll')
		} else {
			$('.dropdown').slideDown().show()
			$('.dropdown').addClass('open')
			$('body').css('overflow', 'hidden')
		}
	})

		// hide the mobile nav if they resize window
	$(window).resize(function () {
		if (window.innerWidth >= 1220) {
			$('.dropdown').hide()
			$('body').css('overflow', 'scroll')
		}
	})
}

export default navigation
