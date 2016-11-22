import $ from 'jquery'
import Mustache from 'mustache'

// MAIN EXPORT START
function locations() {

		function geocodeUrl(zip) {
		  var apiKey = 'AIzaSyBOii_Qh6he0eb9rxEWpKMsROoh2LAuwXk'
		  var apiEndpoint = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + zip + '&key=' + apiKey
		  return apiEndpoint
		}

		function toRad(x) {
		   return x * Math.PI / 180;
		}

		function haversine(lat1, lng1, lat2, lng2) {

			var R = 6371; // km earf
			var x1 = lat2 - lat1;
			var dLat = toRad(x1);
			var x2 = lng2 - lng1;
			var dLng = toRad(x2)
			var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
			Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) *
			Math.sin(dLng / 2) * Math.sin(dLng / 2);
			var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
			var d = R * c;
			return d; // distance in km
		}
		// now entering callback hell. promisifying left as an exercise for the developer


    var dataSet
    function getLocations(zip) {

  			//first geocode the zip
  			$.ajax({
  				url: geocodeUrl(zip),
  				success: function(data) {
  					// console.log(data)
  					// great now we have the zip, let's get the coords
  					var lat = data.results[0].geometry.location.lat
  					var lng = data.results[0].geometry.location.lng

  					// sweet, let's get the locations
  					$.ajax({
  					  	url:'http://genus.hlkbeta.com/wp-json/wp/v2/location?filter[posts_per_page]=-1',
  					  	success: function(data) {

  					  		// ok awesome. let's sort these locations against the zip with the haversine formula
  					  		var locations = []
                 				var distance;
  					  		for(var i=0; i < data.length; i++) {
  					  			distance = haversine(lat, lng, data[i].latitude, data[i].longitude)
  					  			data[i].distance = distance
  					  			locations.push(data[i])
  					  		}

  					  		locations.sort(function (a, b) { return a.distance - b.distance; })

                    	dataSet = {'locations': locations}
                      // get the template
                      var template = $('#demo').html()

                      // parse the template
                      Mustache.parse(template)

                      // inject the data into the parsed template
                      var go = Mustache.render(template, dataSet)

                      // inject the rendered template into the dom
                      $('#location').html(go)

  					  		// go forth, omar, and build!
  					  	},
  					  	error: function() {
  					  			console.log('There is an error with the rest function')
  					  	}
  					  });

  				},
  				error: function(data) {
  					console.log(data)
  					$('#output').html("Error geocoding " + zip)
  				}
  			});


  		}


    // Listen for click on find distributor button
    $(document).ready(function() {
        $('.error').hide()
        $('.nearby').hide()
        $('.legend').hide()
        $('#findDist').on('click', function(e){
          e.preventDefault()
          var theZip = ($('#zipcode').val())

          // validate data
          function zipLength(zip) {
            var zipString = zip.toString()

            if (zipString.length > 4 && zipString.length < 6) {
                getLocations(theZip)
                console.log('right!');
                $('.error').hide()
                $('.nearby').slideDown()
                $('.legend').slideDown()


                  // $('html, body').animate({
                  //   scrollTop: $("#demo").offset().top
                  // }, 2000);


            }else {
              console.log('not enough');
              $('.error').fadeIn()
            }
          }

          zipLength(theZip)

        })
    })


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
