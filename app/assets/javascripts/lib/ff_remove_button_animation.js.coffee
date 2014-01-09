ready = ->
  isFirefox = typeof InstallTrigger isnt "undefined"
  if isFirefox == true
    $('.animate').removeClass 'animate'
$(document).ready ready