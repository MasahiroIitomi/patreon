$(document).on('turbolinks:load', function(){
  $('.reward-btn').change(function(){
    $('.pledge-price').css('display', 'none');
    $('.price-form').prop('disabled', true);
    $('.reward').css({'background-color':'white', 'border': 'none'});

    $(this).parent('.reward__left').siblings('.reward__right').find('.pledge-price').css('display','block');
    $(this).parent('.reward__left').parent('label').parent('.reward').find('input').prop('disabled',false);

    $(this).parent('.reward__left').parent('label').parent('.reward').css({'background-color':'#f3f4f5', 'border': '1px solid #E7ECF0'});
  });
});