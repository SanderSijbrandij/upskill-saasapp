$(document).on('turbolinks:load', function(){
  // Set variables for targets
  var theForm = $('#pro_form'),
      submitBtn = $('#form-submit-button');

  // Set stripe public key
  Stripe.setPublishableKey($('meta[name="stripe-key"]').attr('content'));

  // When user clicks submit
  submitBtn.click(function(event){

    // prevent default submission behavior
    event.preventDefault();

    // Collect CC fields
    var ccNum = $('#card_number').val(),
        cvcNum = $('#card_code').val(),
        expMonth = $('#card_month').val(),
        expYear = $('#card_year').val();

    // Send information to Stripe
    Stripe.createToken({
      number: ccNum,
      cvc: cvcNum,
      exp_month: expMonth,
      exp_year: expYear
    }, stripeResponseHandler);
  });


  // inject card token in form as hidden field
  // release form
});
