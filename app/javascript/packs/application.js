import "bootstrap";

import { initAutocomplete } from '../plugins/init_autocomplete';
initAutocomplete();

import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import { categorySkill } from '../plugins/category_skill';

import { mouse } from '../plugins/mouse';


import { paraxify } from '../plugins/paraxify';


import { addressSubmit } from '../components/search';

import "../plugins/flatpickr";

import { toggleMap } from "../components/toggle_map";


import AOS from 'aos';
import 'aos/dist/aos.css'; // You can also use <link> for styles
// ..
AOS.init();


// sweet alert

const homePage = document.getElementById("home-page");
const navbar = document.querySelector(".navbar");
if (homePage && navbar) {
  window.addEventListener("DOMContentLoaded", (e) => {
    console.log(navbar.style)
  })
}

const bannerCustom = document.querySelector('.banner-custom');
if (bannerCustom) {
  myParaxify = paraxify('.banner-custom');
}

addressSubmit();

if (document.querySelector(".switch")) {
  toggleMap();
}


