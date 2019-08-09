import Typed from 'typed.js';

const typed = () => {
  // const typedTitle = new Typed('.marketing-title', {
  //   strings: ["Never let Mister Bear alone!"],
  //   typeSpeed: 100
  // });
  const typedSubtitle = new Typed('.marketing-subtitle', {
    strings: ["Adopt great toys all around you", "Send your toys on vacation"],
    typeSpeed: 50
  });
}

export { typed };

// const initAutocomplete = () => {
//   const toyAddressInput = document.getElementById('toy_address');
//   if (toyAddressInput) {
//     places({ container: toyAddressInput });
//   }
