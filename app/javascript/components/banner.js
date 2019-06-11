import Typed from 'typed.js';

const typed = document.getElementById('typed');

const loadDynamicBannerText = () => {
  if (typed) {
    new Typed('#typed', {
      strings: ["Environnement","Arts et Culture", "Éducation","LGBTQI", "Lutte contre le racisme","Seniors","Handicap"],
      typeSpeed: 120,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
