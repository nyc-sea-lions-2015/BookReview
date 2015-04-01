$(document).ready(function() {


  $("form#add_comment").on('submit', function(event){

    event.preventDefault();
    var target = event.target

    $.ajax({
      url: target.action ,
      method: "get",
      dataType: "html"

    }).done(function(data){
      $("#comment_header").append(data);
    });
  });


  $("#submit_comment").on('submit', function(event){
    event.preventDefault();
    var target = event.target

    $.ajax({
      url:target.action,
      method: "post",
      data: $(event.target).serialize(),
      dataType: json

    }).done(function(data){
      console.log(data)

    });
  });

});


