$(document).on('turbolinks:load', function() {

  function searchCreator(creator){
    var html = `<div class="searching-creator-box">
                  <a href="/creators/${creator.id}/top">
                    <div class="search-left">
                      <img src="${creator.image}" onerror="this.src='https://s3-ap-northeast-1.amazonaws.com/patreon-image/uploads/default.jpg';">
                    </div>
                    <div class="search-right">
                      <h6>${creator.name}</h6>
                      <p>${creator.things}</p>
                    </div>
                  </a>
                </div>`
    $('#creator-search-result').append(html);
  }

  $('#creator-search-field').on('keyup', function(){
    var input = $('#creator-search-field').val();
    var spaceInput = ' ';
    if(input === spaceInput || input.length === 0){
      return false;
    }
    $('.searching-creator-box').remove();
    $.ajax({
      type: 'GET',
      url: '/search',
      data: {keyword: input},
      dataType: 'json'
    })
    .done(function(creators){
      creators.forEach(function(creator){
        searchCreator(creator);
      })
    })
    .fail(function(){
      console.log('creator検索に失敗しました。');
    });
  });
});
