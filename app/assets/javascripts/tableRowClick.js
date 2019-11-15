document.addEventListener('DOMContentLoaded', function() {
  $(document).on('turbolinks:load', function() {
    $("tr[data-link]").click(function(e) {
      // if Item does not have data-confirm, stop propagation should happen
      let shouldPropagate = !$(e.target).hasClass('table__button');
      if(shouldPropagate){
        window.location = $(this).data("link")
      }
    })
  })
})
