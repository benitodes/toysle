import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
const Slider = require("bootstrap-slider-without-jquery");
import { initMapbox } from '../plugins/init_mapbox';

import { minAgeSlider } from '../plugins/slider.js';
import { priceSlider } from '../plugins/slider.js';
// we are importing the function flatpcickr from our file flatpickr.js
// we are doing that because we want to implement it into our simple form
import { flatpicker } from "../plugins/flatpickr";

initMapbox();

flatpicker();

minAgeSlider();

priceSlider();

