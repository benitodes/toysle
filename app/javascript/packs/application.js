import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css'; // <-- you need to uncomment the stylesheet_pack_tag in the layout!
import { initMapbox } from '../plugins/init_mapbox';
import { flatpicker } from "../plugins/flatpickr";
import { minimumSelection } from "../plugins/flatpickr";
import { initAutocomplete } from "../plugins/init_autocomplete";
import { typed } from "../plugins/typed";
import { displayAlert } from "../plugins/display_alert";

initMapbox();
flatpicker();
initAutocomplete();
minimumSelection();
typed();
displayAlert();
