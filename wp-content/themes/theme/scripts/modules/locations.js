import $ from 'jquery'
import Mustache from 'mustache'

// MAIN EXPORT START

function locations () {
	const template = $('#demo').html()
	Mustache.parse(template)
	const locations = []
	const locationsPerPage = 9

	function geocodeUrl (zip) {
		const apiKey = 'AIzaSyBOii_Qh6he0eb9rxEWpKMsROoh2LAuwXk'
		const apiEndpoint = 'https://maps.googleapis.com/maps/api/geocode/json?address=' + zip + '&key=' + apiKey
		return apiEndpoint
	}

	function toRad (x) {
		return x * Math.PI / 180
	}

	function haversine (lat1, lng1, lat2, lng2) {
		const R = 6371 // km earf
		const x1 = lat2 - lat1
		const dLat = toRad(x1)
		const x2 = lng2 - lng1
		const dLng = toRad(x2)
		const a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
		Math.cos(toRad(lat1)) * Math.cos(toRad(lat2)) *
		Math.sin(dLng / 2) * Math.sin(dLng / 2)
		const c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a))
		const d = R * c
		return d // distance in km
	}
		// now entering callback hell. promisifying left as an exercise for the developer

	let dataSet
	function getLocations (zip, distributorId) {
		// first geocode the zip
		console.log('distid' + distributorId)
		$.ajax({
			url: geocodeUrl(zip),
			success: function (data) {
			// console.log(data)
			// great now we have the zip, let's get the coords
				const lat = data.results[0].geometry.location.lat
				const lng = data.results[0].geometry.location.lng

				// sweet, let's get the locations
				$.ajax({
					//url: 'http://genus.hlkbeta.com/wp-json/wp/v2/location?filter[posts_per_page]=-1',
					url: 'http://genus.hlkbeta.com/wp-content/data/locations.json',
					success: function (data) {
						

						// ok awesome. let's sort these locations against the zip with the haversine formula
						let distance
						console.log(data.length)
						for (let i = 0; i < data.length; i++) {
							distance = haversine(lat, lng, data[i].latitude, data[i].longitude)
							data[i].distance = distance
							console.log(data[i].distributor.term_id)
							
							if (distributorId == 0 || data[i].distributor.term_id == distributorId){
								locations.push(data[i])
							}
						}

						locations.sort(function (a, b) { return a.distance - b.distance })

						dataSet = {'locations': locations.slice(0, locationsPerPage)} // gimme the first 9 items
						locations.splice(0, locationsPerPage) // remove the first nine items

						// inject the data into the parsed template
						const go = Mustache.render(template, dataSet)

						// inject the rendered template into the dom
						$('#location').html(go)

						// go forth, omar, and build!
					},
					error: function () {
						console.log('There is an error with the rest function')
					}
				})
			},

			error: function (data) {
				console.log(data)
				$('#output').html('Error geocoding ' + zip)
			}
		})
	}

	// Listen for click on find distributor button
	$(document).ready(function () {
		$('#findDist').on('click', function (e) {
			e.preventDefault()
			const theZip = ($('#zipcode').val())
			// validate data
			function zipLength (zip) {
				const zipString = zip.toString()
				if (zipString.length > 4 && zipString.length < 6) {
					if ($('#select-distributor').val()) {
							getLocations(theZip, parseInt($('#select-distributor').val()))
					} else {
							getLocations(theZip, 0)
					}
					console.log('right!')
					$('.error').hide()
					$('.nearby').slideDown()
					$('.legend').slideDown()
					$('#loadmore').slideDown()

					$('html, body').animate({
						scrollTop: $('.nearby').offset().top
					}, 1500)
				} else {
					console.log('not enough')
					$('.error').fadeIn()
				}
			}

			zipLength(theZip)
		})

		$('.loadmore').on('click', function (e) {
			e.preventDefault()
			const loadMoreDataSet = {'locations': locations.slice(0, locationsPerPage)} // gimme the first 9 items
			locations.splice(0, locationsPerPage) // remove the first nine items
			const loadMoreLocations = Mustache.render(template, loadMoreDataSet)
			// inject the rendered template into the dom
			$('#location').append(loadMoreLocations)
		})
	})

		// watch distributor dropdown for change then run filter
	$('#select-distributor').change(function () {
		//filterLocations()
		$('#location').html('')
		$('#findDist').click() // yeah, this is dumb
	})

		// filter locations
	function filterLocations () {
		// get the value of the selected option
		const selected = $('#select-distributor option:selected').val()

			// for each item with a class of location get the data attribute
		$('.location').each(function () {
			const id = $(this).data('distid')

				// show everything on null or defualt selection
			if (selected === 'null') {
				$('.location').show()
			} else if (selected === id) {
				$(this).fadeIn()
			} else if (selected !== id) {
				$(this).hide()
			}
		})
	}
}// END EXPORT FUNCTION

export default locations
