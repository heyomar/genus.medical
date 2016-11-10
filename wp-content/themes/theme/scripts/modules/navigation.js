import $ from 'jquery'


function navigation () {
			$('.handle').on('click', function(){
				
				if ($('.open')[0]) {
					$('.menu-header-navigation-container ').removeClass('open')
					$('.menu-header-navigation-container ').slideUp()
				}else {
					$('.menu-header-navigation-container ').slideDown().show()
				$('.menu-header-navigation-container ').addClass('open')
				}

				

			});
}

export default navigation
