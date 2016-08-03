$(document).ready(function() {
  disableStudentButton()
  cohortCheck()
})

function disableStudentButton() {
  $('#complete-student').prop('disabled', true)
}

function enableStudentButton() {
  $('#complete-student').removeAttr('disabled');
}

function cohortCheck() {
  $('#student_cohort_id').on('change focus', function() {
     if ($(this).val() !== ""){
       enableStudentButton();
     }
  });
}
