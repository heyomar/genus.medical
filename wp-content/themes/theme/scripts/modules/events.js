import $ from 'jquery'

function events () {
	if ($('body').hasClass('home')) {
		// if a single event exists do nothing
		if ($('.single-event')[0]) {
		} else {
      // if no events are find then hide the events section on the home page
			$('.events').hide()
		}
	}
}// END MAIN EXPORT

export default events
