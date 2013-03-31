# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

# Below is written in coffee script instead of because its a coffee file. This is in place of the js code on jmasonry site.
jQuery ->
	$('#pins').imagesLoaded ->
		$('#pins').masonry itemSelector: ".box"