$(document).on('page:load', function () {
  $('#products-listing').sortable({
    axis: "y",
    handle: function() {
      ".drag-handle"
    },
    update: function() {
      $.post($(this).data('update-url'), $(this).sortable('serialize'));
      $('#myModal').modal('show');
    }
  });
});
