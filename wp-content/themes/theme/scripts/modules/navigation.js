import $ from 'jquery'

function navigation () {
	// add carets to mobile nav items on hover
	$('.dropdown li').hover(function () {
		$(this).toggleClass('caret')
	})

// mobile nav activation and fullscreen lock
	$('.handle').on('click', function () {
		if ($('.open')[0]) {
			$('.dropdown').removeClass('open')
			$('.dropdown').slideUp()
			$('body').css('position', 'relative')
			$('body').css('overflow', 'scroll')
			$('.arrow').css('transform', 'rotate(0deg)')
		} else {
			$('.dropdown').slideDown().show()
			$('.dropdown').addClass('open')
			$('body').css('position', 'relative')
			$('body').css('overflow', 'hidden')
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
