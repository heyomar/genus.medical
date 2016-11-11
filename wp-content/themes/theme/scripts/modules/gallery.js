import $ from 'jquery'

function gallery () {

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

 $.ajax({
 			url:'http://gmt.dev/wp-json/wp/v2/product?filter[category]=oral-contrast', 
      success: function(data) {
      	console.log(data)
      	$.each(data, function (i, val) {
      		console.log(val['title']['rendered'])
      	})
      },
      error: function() {
					console.log('error')
      }
   });
	
	 $.ajax({
 			url:'http://gmt.dev/wp-json/wp/v2/product?filter[category_name]=syringe', 
      success: function(data2) {
      	console.log(data2)
      	$.each(data2, function (i, val) {
      		console.log(val['title']['rendered'])
      	})
      },
      error: function() {
					console.log('error')
      }
   });

}

export default gallery
