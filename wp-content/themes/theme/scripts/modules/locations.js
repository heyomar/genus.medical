import $ from 'jquery'

import Mustache from 'mustache'


var dataSet

function locations() {
		$.ajax({
				url:'http://gmt.dev/wp-json/wp/v2/location?per_page=100&callback=?', 
				success: function(data) {


						dataSet = {locations: data}

						// get the template
						var template = $('#demo').html()

						// parse the template
						Mustache.parse(template)

						// inject the data into the parsed template
						var rendered = Mustache.render(template, dataSet)

						// inject the rendered template into the dom
						$('#location').html(rendered) 




















				},
				error: function() {
						console.log('There is an error with the locations function')
				}
		 });





}



export default locations