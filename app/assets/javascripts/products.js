jQuery( document ).ready(function( $ ) {
  $('#products-listing').sortable({
    axis: "y",
    update: function() {
      $.post($(this).data('update-url'), $(this).sortable('serialize'))
    }
  });
});
