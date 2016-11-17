import $ from 'jquery'
import Mustache from 'mustache'

// init var
var dataSet

function locations() {
		$.ajax({
				url:'http://gmt.dev/wp-json/wp/v2/location?per_page=100&callback=?', 
				success: function(data) {

				if ($('body').hasClass('how-to-buy')) {
						dataSet = {locations: data}

						// get the template
						var template = $('#demo').html()

						// parse the template
						Mustache.parse(template)

						// inject the data into the parsed template
						var rendered = Mustache.render(template, dataSet)

						// inject the rendered template into the dom
						$('#location').html(rendered) 
					} 


				},
				error: function() {
						console.log('There is an error with the locations function')
				}
		 });



		// watch distributor dropdown for change then run filter
		$('#select-distributor').change(function(){
				filterLocations()
		})

		// filter locations
		function filterLocations() {

			// get the value of the selected option
			var selected = $("#select-distributor option:selected").val()

			// for each item with a class of location get the data attribute
			$('.location').each(function(){
				var id = $(this).data('distid')

				// show everything on null or defualt selection
				if (selected == 'null') {
						$('.location').show()
				}

				// check selected value against the id of the locations then show
				else if (selected == id) {
						$(this).fadeIn()
				}

				// if the selected doesnt match the id of the location, hide that homie!
				else if (selected !== id){
						$(this).hide()
				}
			})
		}

}// END EXPORT FUNCTION

export default locations