ready = ->
  if $('.dropdown-wrapper').length > 0
    $('.dropdown-title').click ->
      if $(this).parent().hasClass('active')
        $(this).parent().removeClass('active')
      else
        $(this).parent().addClass('active')
  return
$(document).ready ready