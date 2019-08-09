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
// function to get value from age slider and prevend reloading page
const minAgeSlider = () => {
  const ageSlider = document.getElementById("ageSlider");
  ageSlider.addEventListener('click', (event) => {
    form.submit();
    const minAge = document.getElementById("age").value
  });
}


// function to get value from price slider and prevend reloading page
const priceSlider = () => {
  const priceForm = document.getElementById("priceSlider");
  priceForm.addEventListener('click', (event) => {
    console.log(event);
    form.submit();
    const priceRange = document.getElementById("price").value
    // priceRange = array of min and max price e.g. [3, 10]
  });

}


export { minAgeSlider }
export { priceSlider }
