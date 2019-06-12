import Rails from 'rails-ujs';
// Rails.start()
const addressSubmit = () => {
  const addressForm = document.querySelector('.address-form');
  const addressFormInputValue = document.querySelector('#address').value;
  const dateInputValue = document.querySelector('#date-picker').value;
  const categoryInputValue = document.querySelector('#category').value;
  const token = document.querySelector('meta[name="csrf-token"]').getAttribute('content');

  if (addressForm) {
    const algoliaDiv = document.querySelector('.ap-dataset-places');
    algoliaDiv.addEventListener('click', (event) => {
      // // Rails.fire(addressForm, 'submit');
      addressForm.dispatchEvent(new Event('submit', {bubbles: true, cancelable: true}));
      // // saddressForm.submit()
      // // console.log(event.suggestion)
      // // console.log(algoliaDiv)
      // fetch(`/projects?utf8=✓&address=${addressFormInputValue}&start_time=${dateInputValue}&category=${categoryInputValue}`,{
      //   method: 'GET',
      //   credentials: 'same-origin',
      //   headers: {
      //     'X-CSRF-TOKEN': token,
      //     'Content-Type': 'application/json',
      //     Accept: 'application/javascript'
      //   }
      // }).then(response => response.json())
      //   .then(data=>renderPreview(data))
      // Rails.ajax({
      //   url: `/projects?utf8=✓&address=${addressFormInputValue}&start_time=${dateInputValue}&category=${categoryInputValue}`,
      //   // url: `/projects`,
      //   type: 'GET',
      //   dataType: 'script',
      //   success: function(data){
      //     // console.log('yay')
      //     // console.log(data)
      //   }
      // });

    });
  }
};

export { addressSubmit };

