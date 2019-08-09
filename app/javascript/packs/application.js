import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import "flatpickr/dist/themes/dark.css";
import "bootstrap-slider-without-jquery/dist/css/bootstrap-slider.css";

import { initMapbox } from '../plugins/init_mapbox';
import { flatpicker } from "../plugins/flatpickr";
import { minimumSelection } from "../plugins/flatpickr";
import { initAutocomplete } from "../plugins/init_autocomplete";
import { typed } from "../plugins/typed";
// we are importing the function flatpcickr from our file flatpickr.js
// we are doing that because we want to implement it into our simple form

initMapbox();
flatpicker();
initAutocomplete();
minimumSelection();
typed();
