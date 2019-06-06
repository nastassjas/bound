import "bootstrap";

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { categorySkill } from '../plugins/category_skill';


// sweet alert
import { initSweetalert } from '../plugins/init_sweetalert';

initSweetalert('#sweet-alert-demo', {
  title: "Merci",
  text: "Votre inscription a bien été prise en compte !",
  icon: "success"
}, (value) => {
  if (value) {
    const link = document.querySelector('#add-booking');
    link.click();
  }
});
