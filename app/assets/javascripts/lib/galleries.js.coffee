# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

ready = ->
  if $('.gallery-image').length > 0
    $('.gallery-image').fancybox({
      maxHeight: 400
      padding: 20
      prevEffect		: 'fade',
      nextEffect		: 'fade',
      openEffect	: 'none',
      closeEffect	: 'none'
    })
  return
$(document).ready ready