const addressUser = document.getElementById('user_address');

if (addressUser) {
  const places = require('places.js');
  const placesAutocomplete = places({
    container: addressUser
  });
}
