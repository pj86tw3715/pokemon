// 愛心按鈕
$(function(){
    $(".jsheart").on("click",heartChange);
    
    function heartChange(){
  
      if ($(this).hasClass("glyphicon-heart-empty")) $(this).removeClass("glyphicon-heart-empty").addClass("glyphicon-heart")
      else if ($(this).hasClass("glyphicon-heart")) $(this).removeClass("glyphicon-heart").addClass("glyphicon-heart-empty")
      
      }
      
  });
  
  
  // 防止圖片載入較慢而導致排版跑掉
  $('.grid').imagesLoaded( function() {
  
    // 瀑布流
    $(function(){
      // init Isotope
      var $grid = $('#grid').isotope({
        itemSelector: '.element-item',
        percentPosition: true,
        masonry: {
          // use element for option
          columnWidth: '.grid-sizer'
        }
      });
  
      // bind filter button click
      $('#filters').on( 'click', 'a', function(e) {
        e.preventDefault();
        console.log("test");
        var filterValue = $( this ).attr('data-filter');
        $grid.isotope({ filter: filterValue });
      });
    });
    
  });