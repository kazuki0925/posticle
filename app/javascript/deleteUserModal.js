$(function(){
  $(".user-modal-open").on('click', function(){
    $('.delete-user-modal').fadeIn();
  });
  $('.delete-user-modal-close').on('click', function(){
    $('.delete-user-modal').fadeOut();
  });
});