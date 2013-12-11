ready = ->
  $('a.on-off').click ->
    wrapper = $(this).parent().parent()
    if wrapper.hasClass('light-on')
      wrapper.removeClass('light-on')
      wrapper.addClass('light-off')
    else
      wrapper.removeClass('light-off')
      wrapper.addClass('light-on')
    return
  $('a.out-image').fancybox({
    maxHeight: 400
    padding: 20
    prevEffect		: 'fade',
    nextEffect		: 'fade',
    openEffect	: 'none',
    closeEffect	: 'none',
    showNavArrows: false
  })
  return
$(document).ready ready
