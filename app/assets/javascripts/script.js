$(function(){

  //clear modal when it's hidden.
  $('#myModal').on('hidden.bs.modal', function() {
      $(this).removeData('bs.modal');
  });

  $('.criterium-table tbody').on('click','.js-task-sort',function(e){
    e.preventDefault();
    var btn = $(this);
    $.ajax({
      url: btn.attr('href'),
      method: 'PATCH'
    }).done(function(data){
      $('.criterium-table tbody').html(data);
      // console.log(data);
    }).error(function(err){
      alert('something broke.');
      console.log(err);
    })
  });
});