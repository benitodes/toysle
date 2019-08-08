import places from 'places.js';

const initAutocomplete = () => {
  const toyAddressInput = document.getElementById('toy_address');
  if (toyAddressInput) {
    places({ container: toyAddressInput });
  }
};

export { initAutocomplete };
