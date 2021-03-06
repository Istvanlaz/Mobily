import 'mapbox-gl/dist/mapbox-gl.css';
import '@mapbox/mapbox-gl-geocoder/dist/mapbox-gl-geocoder.css';

import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const mapElement = document.getElementById('map');
const mapIndex = document.getElementById('map-index');

// Building the map for single product on show pages

if (mapElement) { // only build a map if there's a div#map to inject into
  // mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/istvanlaz/ckezqjjnp0tyy19pfjpr6e6pv'
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

// User localisation on get_lucky page

// if (mapIndex) {
//   mapboxgl.accessToken = mapIndex.dataset.mapboxApiKey;
//   const map = new mapboxgl.Map({
//     container: 'map-index',
//     style: 'mapbox://styles/istvanlaz/ckezqjjnp0tyy19pfjpr6e6pv'
//   });

// }


// Building the map for multiple products on get_lucky page

if (mapIndex) { // only build a map-index if there's a div#map to inject into
  // mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
  mapboxgl.accessToken = mapIndex.dataset.mapboxApiKey;

  const map = new mapboxgl.Map({
    container: 'map-index',
    style: 'mapbox://styles/istvanlaz/ckezqjjnp0tyy19pfjpr6e6pv'
  });

  const markers = JSON.parse(mapIndex.dataset.markers);

  // const user_marker = JSON.parse(mapIndex.dataset.markers);
  // console.log(user_marker.first);

  markers.forEach((marker) => {

    const popup = new mapboxgl.Popup({
                                closeButton: false,
                                closeOnClick: false
                              })
                              .setHTML(marker.infoWindow.content);

    const productMarker = new mapboxgl.Marker()
                                      .setLngLat([marker.lng, marker.lat])
                                      .setPopup(popup)
                                      .addTo(map);

    const markerDiv = productMarker.getElement();

    const cardRedirect = document.getElementById('map_product_card');

    markerDiv.addEventListener('mouseenter', () => {
      productMarker.togglePopup(popup);
    });

    markerDiv.addEventListener('mouseleave', () => {
      productMarker.togglePopup(popup);
    });

    markerDiv.addEventListener('click', () => {
      popup.remove();
      // console.log(marker.redirectPath.content);
      window.location.href = marker.redirectPath.content;
    });

  });

  // if (markers.length === 0) {
  //   map.setZoom(1);
  // } else if (markers.length === 1) {
  //   map.setZoom(13);
  //   map.setCenter([markers[0].lng, markers[0].lat]);
  // } else {
  //   const bounds = new mapboxgl.LngLatBounds();
  //   markers.forEach((marker) => {
  //     bounds.extend([marker.lng, marker.lat]);
  //   });
  //   map.fitBounds(bounds, { duration: 2000, padding: 75 })
  // }

  if (markers.length === 0) {
    map.setZoom(1);
  } else if (markers.length === 1) {
    map.setZoom(13);
    map.setCenter([markers[0].lng, markers[0].lat]);
  } else {
    // const bounds = new mapboxgl.LngLatBounds();
    // markers.forEach((marker) => {
    map.setZoom(14);
    map.setCenter([markers[0].lng, markers[0].lat]);

      // bounds.extend([marker.lng, marker.lat]);
    // });
    // map.fitBounds(bounds, { duration: 2000, padding: 75 })
  }

  // const user_marker = JSON.parse(mapIndex.dataset.user_marker);
  // console.log(user_marker);
  // console.log(markers);

  // const element = document.createElement('div');
  //   element.className = 'marker';
  //   element.style.backgroundImage = `url('${user.image_url}')`;
  //   element.style.backgroundSize = 'contain';
  //   element.style.width = '25px';
  //   element.style.height = '25px';

  // const user_marker = new mapboxgl.Marker(element)
  //                          .setLngLat([4.3770668328905, 50.81627415])
  //                          .addTo(map);

  // user_marker.forEach((user) => {

  //   const element = document.createElement('div');
  //   element.className = 'marker';
  //   element.style.backgroundImage = `url('${user.image_url}')`;
  //   element.style.backgroundSize = 'contain';
  //   element.style.width = '25px';
  //   element.style.height = '25px';

  //   new mapboxgl.Marker(element)
  //     .setLngLat([user.lng, user.lat])
  //     // .setPopup(new mapboxgl.Popup({offset: 5})
  //     //                       .setHTML(user.infoWindow.content))
  //     .addTo(map);
  // });

  // if (user_marker.length === 0) {
  //   console.log('You have no user');

  //   map.setZoom(1);
  // } else if (user_marker.length === 1) {
  //   console.log('You have one user');
  //   map.setZoom(13);
  //   map.setCenter([user_marker[0].lng, user_marker[0].lat]);
  // } else {
  //   console.log('You have several users!');
  //   const bounds = new mapboxgl.LngLatBounds();
  //   user_marker.forEach((marker) => {
  //     bounds.extend([marker.lng, marker.lat]);
  //   });
  //   map.fitBounds(bounds, { duration: 2000, padding: 75 })
  // }

  const geocoder = new MapboxGeocoder({
    accessToken: mapboxgl.accessToken,
    marker: false,
    mapboxgl: mapboxgl
  });

  map.addControl(geocoder);

  // map.addControl(new MapboxGeocoder({
  //   accessToken: mapboxgl.accessToken,
  //   marker: {
  //     color: 'blue'
  //   },
  //   mapboxgl: mapboxgl
  // }));
}

// Getting autocomplete for addresses on product new/edit

const addressInput = document.getElementById('product_address');

if (addressInput) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressInput
  });
}

// Seting the map size to big on expand click on products show pages

const expandMap = document.getElementById('expand_map_action');

if (expandMap) {
  const mapDarkener = document.querySelector('.show_img_darkener');
  const mapContainer = document.querySelector('.product_location_img');

  const buildMap = () => {
    // mapboxgl.accessToken = process.env.MAPBOX_API_KEY;
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/istvanlaz/ckezqjjnp0tyy19pfjpr6e6pv'
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










