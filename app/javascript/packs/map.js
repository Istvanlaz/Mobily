import 'mapbox-gl/dist/mapbox-gl.css';

import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';

const mapElement = document.getElementById('map');

// Building the map

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });

  const markers = JSON.parse(mapElement.dataset.markers);

  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .setPopup(new mapboxgl.Popup({offset: 5})
                            .setHTML(marker.infoWindow.content))
      .addTo(map);
  })

  if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(13);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach((marker) => {
      bounds.extend([marker.lng, marker.lat]);
    });
    map.fitBounds(bounds, { duration: 2000, padding: 75 })
  }
}

// Getting autocomplete for addresses

const addressInput = document.getElementById('product_address');

if (addressInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressInput
  });
}

// Seting the map size to big on expand click

const expandMap = document.getElementById('expand_map_action');

if (expandMap) {
  const mapDarkener = document.querySelector('.show_img_darkener');
  const mapContainer = document.querySelector('.product_location_img');

  const buildMap = () => {
    mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });

    const markers = JSON.parse(mapElement.dataset.markers);

    markers.forEach((marker) => {
      new mapboxgl.Marker()
        .setLngLat([marker.lng, marker.lat])
        .setPopup(new mapboxgl.Popup({offset: 5})
                              .setHTML(marker.infoWindow.content))
        .addTo(map);
    })

    if (markers.length === 0) {
      map.setZoom(1);
    } else if (markers.length === 1) {
      map.setZoom(13);
      map.setCenter([markers[0].lng, markers[0].lat]);
    } else {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach((marker) => {
        bounds.extend([marker.lng, marker.lat]);
      });
      map.fitBounds(bounds, { duration: 2000, padding: 75 })
    }
  };

  const setMapDarkener = () => {
    if (mapDarkener.style.display === "block") {
      return;
    } else {
      mapDarkener.style.display = "block";
    }
  };

  const unsetMapDarkener = () => {
    if (mapDarkener.style.display === "" || mapDarkener.style.display === "none") {
      return;
    } else {
      mapDarkener.style.display = "none";
    }
  };

  const setMapBig = (targetMap) => {
    if (targetMap.classList.contains('big_map_view')) {
      return;
    } else {
      targetMap.classList.remove('product_location_img');
      targetMap.classList.add('big_map_view');
    }
  };

  const unsetMapBig = (targetMap) => {
    if (targetMap.classList.contains('product_location_img')) {
      return;
    } else {
      targetMap.classList.remove('big_map_view');
      targetMap.classList.add('product_location_img');
    }
  };

  mapDarkener.addEventListener('click', () => {
    unsetMapBig(mapContainer);
    unsetMapDarkener();
    buildMap();
  });

  expandMap.addEventListener('click', e => {
    const targetMap = e.target.closest('div');

    if (!targetMap) return;

    if (targetMap.classList.contains('product_location_img')) {
      setMapBig(targetMap);
      setMapDarkener();
    } else {
      unsetMapBig(targetMap);
      unsetMapDarkener();
    }

    buildMap();
  });
}










