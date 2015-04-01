$(document).ready(function() {


  $("form#add_comment").on('submit', function(event){

    event.preventDefault();
    var target = event.target

    $.ajax({
      url: target.action ,
      method: "get",
      dataType: "html"

    }).done(function(data){
      console.log(data);
      $("#comment_header").append(data);
    });
  });
});
