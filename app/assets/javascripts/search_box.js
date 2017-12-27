$(function() {

  $('#creator-search-field').on('keyup', function(){
    var input = $('#creator-search-field').val();
    var spaceInput = ' ';
    if(input === spaceInput || input.length === 0){
      return false;
    }
    $.ajax({
      type: 'GET',
      url: '/search',
      data: {keyword: input},
      dataType: 'json'
    })
  })
});
