window.initMap = ->
  box = document.getElementById('map')
  if box != null 
    location = { lat: parseFloat(box.dataset.lat), lng: parseFloat(box.dataset.lon) }
    map = new (google.maps.Map)(box,
      center: location
      zoom: 12)
    marker = new (google.maps.Marker)(
      position: location
      map: map)
  
  return

$(document).ready ->
  window.initMap()
