import "bootstrap";
// import "../plugins/flatpickr"
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';

// // app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

initMapbox();
flatpickr(".datepicker", {})

