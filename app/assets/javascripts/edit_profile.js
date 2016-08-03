$(document).ready(function(){
  disableButton();
  checkForCompletion();
  typeCheckForCompletion();
})

function disableButton(){
  $('#complete-profile').prop('disabled', true)
}

function enableButton(){
  $('#complete-profile').removeAttr('disabled');
}

function checkForCompletion(){
  var inputs = $('#user_email, #user_bio, #user_slack_name')
  var empty = findEmpty(inputs);

  empty ? disableButton() : enableButton()
}

function findEmpty(inputs){
  var thing = false
  $.each(inputs, function(index, input){

    if ((input.value.length < 1) || (input.value === "Choose One")) {
      thing = true;
    }
  });
  return thing
}

function typeCheckForCompletion(){
  var inputs = $('#user_email, #user_bio, #user_slack_name')

  inputs.on('keyup change focus', function(){
    roleCheck();

  });
}

function roleCheck(){
  var select = $('#user_student_or_mentor').val();

  var cohorts = $('.cohort-info').data('cohorts')

  $('.add-on').remove()
  if (select === "Student") {
    $('.update-profile').append(studentForm())
    // $('#user_cohort').append('<option value="Choose One">Choose One</option>')
    $.each(cohorts, function(index, cohort){
      $('#user_cohort').append('<option value="' + cohort.id + '">' + cohort.id + '</option>')
    })
  } else if (select === "mentor") {
    $('.update-profile').append('<div class="add-on">maybe</div>')
  }
  checkForCompletion();
}

function studentForm(){

  return '<div class="form-group add-on"><span>*</span><label for="user_cohort">Cohort: </label>\
          <select class="form-control" name="user[cohort]" id="user_cohort"></select>'
}
