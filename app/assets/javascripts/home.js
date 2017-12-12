$(document).on('turbolinks:load', function(){
  $('#modal-icon, .menu-modal').hover(
    function(){
      $('.menu-modal').addClass('show');
    },
    function(){
      $('.menu-modal').removeClass('show');
    });
})
