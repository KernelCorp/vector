ready = ->
  myMap = ''
  init = ->
    myMap = new ymaps.Map "map", {
      center: [54.869554, 83.093585],
      zoom: 16,
      behaviors: ['default', 'scrollZoom']
    }
    myPlacemark = new ymaps.Placemark([54.869554, 83.093585], {} ,{})
    myMap.geoObjects.add(myPlacemark)
    myMap.controls.add('zoomControl', 'scrollZoom');
  if $('#map').length > 0
    ymaps.ready(init)
  return
$(document).ready ready
#$(document).on 'page:load', ready
