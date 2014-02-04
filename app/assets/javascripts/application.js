// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require underscore
//= require gmaps/google
//= require_tree .
$(document).ready(function(){
	
	function initialize() {
			var mapOptions = {
				center: new google.maps.LatLng(52.076961, 4.315696),
				zoom: 8
			};
			
			var map = new google.maps.Map(document.getElementById("map"), mapOptions);
			var currentInfoWindow = null;
			markers.forEach(function(element,index,array){
				var contentString = "<h1>"+element.tit+", "+element.city+"</h1><br /><p>"+element.sum+"</p><br />Meer...";
				var myLatlng = new google.maps.LatLng(element.lat, element.lng);
				var marker = new google.maps.Marker({
					position: myLatlng,
					map: map,
					title: element.tit
					});
					
					var infowindow = new google.maps.InfoWindow({
					content: contentString
					});
					google.maps.event.addListener(marker, "click", function() {
					if(currentInfoWindow != null) {
						currentInfoWindow.close();
					}
				

					infowindow.open(map, marker);
					currentInfoWindow = infowindow; 

					});
				})		
			}		
	google.maps.event.addDomListener(window, 'load', initialize);
});

jQuery(document).ready(function($) {
    function updateCountdown() {
    // 140 is the max message length
    var remaining = 200 - jQuery('#location_summary').val().length;
    jQuery('.countdown').text(remaining + ' characters remaining.');
	}
	
	updateCountdown();
    $('#location_summary').change(updateCountdown);
    $('#location_summary').keyup(updateCountdown);
});