import $ from 'jquery'

function navigation () {
// mobile nav activation and fullscreen lock
	$('.handle').on('click', function () {
		if ($('.open')[0]) {
			$('.dropdown').removeClass('open')
			$('.dropdown').slideUp()
			$('body').css('overflow', 'scroll')
			$('.arrow').css('transform', 'rotate(0deg)')
		} else {
			$('.dropdown').slideDown().show()
			$('.dropdown').addClass('open')
			$(document).bind(
				'touchmove',
				function (e) {
					e.preventDefault()
				})
			// $('body').css('overflow', 'hidden')
			$('.arrow').css('transform', 'rotate(180deg)')
		}
	})

	// hide the mobile nav if they resize window
	$(window).resize(function () {
		if (window.innerWidth >= 1220) {
			$('.dropdown').hide()
			$('body').css('overflow', 'scroll')
		}
	})

	// active page highlight on desktop nav
	$('.current-menu-item').toggleClass('ds-caret')
}

export default navigation
