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


// function to get value from age slider and prevend reloading page
const minAgeSlider = () => {
  const ageForm = document.getElementById("age-slider-form");
  console.log(ageForm)
  ageForm.addEventListener('submit', (event) => {
    console.log(event)
    event.preventDefault();
    const minAge = document.getElementById("age").value
    console.log(minAge);
  });
}


// function to get value from price slider and prevend reloading page
const priceSlider = () => {

  const priceForm = document.getElementById("price-slider-form");
  console.log(priceForm)
  priceForm.addEventListener('submit', (event) => {
    event.preventDefault();
    const priceRange = document.getElementById("price").value
    // priceRange = array of min and max price e.g. [3, 10]
  });

}


export { minAgeSlider }
export { priceSlider }
