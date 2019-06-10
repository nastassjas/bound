import "bootstrap";

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { categorySkill } from '../plugins/category_skill';

import { mouse } from '../plugins/mouse';

import { paraxify } from '../plugins/paraxify';

import { transition } from '../plugins/transition';


import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
AOS.init();


// sweet alert
// import { initSweetalert } from '../plugins/init_sweetalert';

// initSweetalert();

const homePage = document.getElementById("home-page");
const navbar = document.querySelector(".navbar");
if (homePage && navbar) {
  window.addEventListener("DOMContentLoaded", (e) => {
    console.log(navbar.style)
  })
}

myParaxify = paraxify('.banner-custom');
