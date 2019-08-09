const Slider = require("bootstrap-slider-without-jquery");


// create new slider for age filter
const slider = new Slider('#age', {
  formatter: function(value) {
    return 'Current value: ' + value;
  }
});


// create new slider for price filter
const sliderPrice = new Slider('#price', {
  formatter: function(value) {
    return 'Current value: ' + value;
  }
});


const form = document.getElementById('filter-form');
// function to get value from age slider and submit form (ajax)
const minAgeSlider = () => {
  const ageSlider = document.getElementById("ageSlider");
  ageSlider.addEventListener('click', (event) => {
    Rails.fire(form, "submit");
  });
}


// function to get value from price slider and submit form (ajax)
const priceSlider = () => {
  const priceSlider = document.getElementById("priceSlider");
  priceSlider.addEventListener('click', (event) => {
    Rails.fire(form, "submit");
  });
}

// const dateSelector = () => {
//   const dateSelector = document.getElementById("rangeDate");
//   priceSlider.addEventListener('click', (event) => {
//     console.log(event);
//     // form.submit();
//   });

// }

export { minAgeSlider }
export { priceSlider }
