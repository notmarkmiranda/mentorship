$(document).ready(function(){
  disableButton();
  checkForCompletion();
  typeCheckForCompletion();
})

function disableButton(){
  $('#complete-profile').prop('disabled', true)
}

function checkForCompletion(){
  var empty = false;
  var inputs = $('form > div > input')
  inputs.each(function(){
    if ($(this).val().length < 1){
      empty = true
    }
  });
  if (empty) {
      $('#complete-profile').prop('disabled', true);
  } else {
      $('#complete-profile').removeAttr('disabled');
  }
}

function typeCheckForCompletion(){
  var inputs = $('form > div > input')
  inputs.keyup(function(){
    checkForCompletion();
  });
}
