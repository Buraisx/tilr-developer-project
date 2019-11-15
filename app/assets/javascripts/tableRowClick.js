document.addEventListener('DOMContentLoaded', function() {
  $(document).on('turbolinks:load', function() {
    $("tr[data-link]").click(function(e) {
      e.stopPropagation();
      window.location = $(this).data("link")
    })
  })
})
