const Slider = require("bootstrap-slider-without-jquery");

const slider = new Slider('#age', {
  formatter: function(value) {
    return 'Current value: ' + value;
  }
});

// const priceSlider = new Slider('price', {
//   formatter: function(value) {
//     return 'Current value: ' + value;
//   }
// });

const minAgeSlider = () => {
  // console.log(minAge);
  // return minAge.value;
  const ageForm = document.getElementById("slider-form");
  console.log(ageForm)
  ageForm.addEventListener('submit', (event) => {
    console.log(event)
    event.preventDefault();
    const minAge = document.getElementById("age").value
    console.log(minAge);
  });
}





export { minAgeSlider }
