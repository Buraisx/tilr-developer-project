document.addEventListener('DOMContentLoaded', function () {
  $(document).on('turbolinks:load', function () {
    $('option').mousedown(function (e) {
      e.preventDefault();
      $(this).prop('selected', !$(this).prop('selected'));
      return false;
    });
  })
})