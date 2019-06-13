const toggleMap = () => {
  // const mapOn = document.querySelector(".map-on");
  // const mapOff = document.querySelector(".map-off");

  const cardsGrid = document.querySelector(".container-cards-2");
  const mapContainer = document.getElementById("map");

  // console.log(mapContainer);

  const switchButton = document.querySelector('#map-switch');


  const hideMap = () => {
    mapContainer.classList.add('hidemap');
    mapContainer.classList.remove('showmap');

    cardsGrid.classList.add('large');
  }

  const showMap = () => {
    mapContainer.classList.remove('hidemap');
    mapContainer.classList.add('showmap');

    cardsGrid.classList.remove('large');
  }

  if (!switchButton.checked) {
    hideMap();
  } else {
    showMap();
  }

  switchButton.addEventListener('change', (e) => {
    if (switchButton.checked) {
      showMap();
    } else {
      hideMap();
    }
  })
}


export { toggleMap };
