$(document).ready(function(){
  disableButton();
  checkForCompletion();
})

function disableButton(){
  $('#complete-profile').prop('disabled', true)
}

function checkForCompletion(){
  $('form > div > input').keyup(function() {

      var empty = false;

      $('form > div > input').each(function() {
          if ($(this).val().length < 1) {
              empty = true;
          }
      });

      if (empty) {
          $('#complete-profile').prop('disabled', true); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
      } else {
          $('#complete-profile').removeAttr('disabled'); // updated according to http://stackoverflow.com/questions/7637790/how-to-remove-disabled-attribute-with-jquery-ie
      }
  });
}
