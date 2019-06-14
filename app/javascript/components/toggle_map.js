import { initMapbox } from '../plugins/init_mapbox';

const toggleMap = () => {
  // const mapOn = document.querySelector(".map-on");
  // const mapOff = document.querySelector(".map-off");

  const cardsGrid = document.querySelector(".container-cards-2");
  const mapContainer = document.getElementById("map");

  // console.log(mapContainer);

  const switchButton = document.querySelector('#map-switch');


  const hideMap = () => {
    mapContainer.style.width = '0%';
    cardsGrid.classList.add('large');
  }

  const showMap = () => {
    mapContainer.style.width = '40%';
    cardsGrid.classList.remove('large');
    initMapbox();
  }

  // if (!switchButton.checked) {
  //   hideMap();
  // }

  switchButton.addEventListener('change', (e) => {
    if (switchButton.checked) {
      showMap();
    } else {
      hideMap();
    }
  })
}


export { toggleMap };
