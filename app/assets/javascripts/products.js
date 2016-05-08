jQuery( document ).ready(function( $ ) {
  $('#products-listing').sortable({
    axis: "y",
    update: function() {
      alert('Record updated!')
    }
  });
});
