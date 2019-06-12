import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('address');
  if (addressInput) {
    const placesAutocomplete = places({ container: addressInput, userDeviceLocation: true });
    placesAutocomplete.on('change', e => document.getElementById('refresh-index').click());
  }
};

export { initAutocomplete };
