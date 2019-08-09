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
    form.submit();
    const minAge = document.getElementById("age").value
  });
}


// function to get value from price slider and submit form (ajax)
const priceSlider = () => {
  const priceSlider = document.getElementById("priceSlider");
  priceSlider.addEventListener('click', (event) => {
    console.log(event);
    // priceRange = array of min and max price e.g. [3, 10]
    // const priceValue = document.getElementById("price");
    const priceRange = document.getElementById("price").value
    // priceValue.value = priceRange
    console.log(priceRange)
    form.submit();
  });

}


export { minAgeSlider }
export { priceSlider }
