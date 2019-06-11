const addressSubmit = () => {
  const addressForm = document.querySelector('.address-form');
  if (addressForm) {
    const algoliaDiv = document.querySelector('.ap-dataset-places');
    algoliaDiv.addEventListener('click', (event) => {
      addressForm.submit();
    });
  }
};

export { addressSubmit };

