$(document).ready(function() {


  $("#add_comment").on('click', function(event){

    event.preventDefault();

    $.ajax({
      url: "/review/<%=@current_review.id%>/comment/_new"
      method: "get",
      dataType: "html"

    }).done(function(data){
      $("#comment_header").append(data);
    });
  });
});
