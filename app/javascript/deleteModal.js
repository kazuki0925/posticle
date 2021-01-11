$(function(){
  $(".user-delete-img").on('click', function(){
    $('.delete-modal').fadeIn();
  });
  $('.delete-modal-close').on('click', function(){
    $('.delete-modal').fadeOut();
  });
});