ready = ->
  MapAcadem = ''
  init_academ = ->
    MapAcadem = new ymaps.Map "map-academ", {
      center: [54.869554, 83.093585],
      zoom: 16,
      behaviors: ['default', 'scrollZoom']
    }
    PlacemarkAcadem = new ymaps.Placemark([54.869554, 83.093585], {} ,{})
    MapAcadem.geoObjects.add(PlacemarkAcadem)
    MapAcadem.controls.add('zoomControl', 'scrollZoom');
  MapTown = ''
  init_town = ->
    MapTown = new ymaps.Map "map-town", {
      center: [55.037442, 82.934786],
      zoom: 16,
      behaviors: ['default', 'scrollZoom']
    }
    PlacemarkTown = new ymaps.Placemark([55.037442, 82.934786], {} ,{})
    MapTown.geoObjects.add(PlacemarkTown)
    MapTown.controls.add('zoomControl', 'scrollZoom');
  if $('#map-academ').length > 0
    ymaps.ready(init_academ)
  if $('#map-town').length > 0
    ymaps.ready(init_town)
  return
$(document).ready ready
#$(document).on 'page:load', ready
