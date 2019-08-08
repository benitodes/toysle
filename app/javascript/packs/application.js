import "bootstrap";

import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!

import { initMapbox } from '../plugins/init_mapbox';

// we are importing the function flatpcickr from our file flatpickr.js
// we are doing that because we want to implement it into our simple form
import { flatpicker } from "../plugins/flatpickr";

import { initAutocomplete } from "../plugins/init_autocomplete";

initMapbox();

initAutocomplete();

flatpicker();
