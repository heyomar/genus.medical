import $ from 'jquery'

function gallery() {

	// initialize var
	var isClicked = false;

	//event listener on thumbnail images
	$('.thumb').click(function(e){
		// se
		isClicked = true;

		// get the background image url
		const bgImage = $(this).css("background-image")
		const viewImage = $('.image').css('background-image')

			// swap the images
			if (isClicked = true) {
					$(".image").css('background-image', bgImage)
					$(this).css('background-image', viewImage);
			}
	})


	// Zoom feature
	$('.view').on('click', function(){
		if ($('.zoomIn')[0]){
				$('.image').removeClass('zoomIn')
				$('.image').addClass('zoomNormal')
		} else  {
				$('.image').removeClass('zoomNormal')
				$('.image').addClass('zoomIn')
		}
	})
}

export default gallery
