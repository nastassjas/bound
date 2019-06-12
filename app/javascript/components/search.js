import Rails from 'rails-ujs';
// Rails.start()
const addressSubmit = () => {
  // const addressForm = document.querySelector('.address-form');
  // const addressFormInputValue = document.querySelector('#address').value;
  // const dateInputValue = document.querySelector('#date-picker').value;
  // const categoryInputValue = document.querySelector('#category-search').value;
  // const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

  // if (addressForm) {
  //   const algoliaDiv = document.querySelector('.ap-dataset-places');
  //   algoliaDiv.addEventListener('click', (event) => {
  //     addressForm.dispatchEvent(new Event('submit', {bubbles: true, cancelable: true}));
  //   });
  // }
};

const categorySubmit = () => {
  const categorySearch = document.querySelector('#category-search');
  const addressForm = document.querySelector('.address-form');
  // const addressFormInputValue = document.querySelector('#address').value;
  // const dateInputValue = document.querySelector('#date-picker').value;
  // const categoryInputValue = document.querySelector('#category-search').value;
  // const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

  if (categorySearch) {
    categorySearch.addEventListener('change', (event) => {
      addressForm.dispatchEvent(new Event('submit', { bubbles: true, cancelable: true }));
    });
  }
};

export { addressSubmit, categorySubmit };

