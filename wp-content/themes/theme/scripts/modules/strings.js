import $ from 'jquery'

function string() {

		// parses url for query string value
		function getParameterByName(name, url) {
		if (!url) url = window.location.href;
		name = name.replace(/[\[\]]/g, "\\$&");
		var regex = new RegExp("[?&]" + name + "(=([^&#]*)|&|#|$)"),
		results = regex.exec(url);
		if (!results) return null;
		if (!results[2]) return '';
		return decodeURIComponent(results[2].replace(/\+/g, " "));
		}

		// Clean css url
		function cleanCssURL(link) {
			var one = link.replace('url("','')
			var two = one.replace('")', '')
			return two
		}

// 		$('#request').on('click', function(e){
// 				e.preventDefault()
//
// 				// var productImageURL = $('.product-hero').css('background-image')
// 				const productName = $('.name').text()
// 				const productCategory = $('.category').text()
// 				// console.log(productImageURL)
// 				console.log(productName)
// 				console.log(productCategory)
//
// var someVarName = 'helloooooo';
// localStorage.setItem('someVarName', someVarName)
//
//
//
// 				window.location.replace("/request-product-information")
//
// 				$('.category').text(productCategory)
// 				$('.name').text(productName)
//
// 		})

}//END MAIN FUNCTION


export default string
