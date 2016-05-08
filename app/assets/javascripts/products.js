jQuery( document ).ready(function( $ ) {
  $('#products-listing').sortable({
    axis: "y",
    handle: function() {
      ".drag-handle"
    },
    update: function() {
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
    }
  });
});
