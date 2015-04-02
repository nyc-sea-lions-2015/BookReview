$(document).ready(function() {
  $("form#add_comment").on('submit', function(event){

    event.preventDefault();
    var target = event.target

    $.ajax({
      url: target.action ,
      method: "get",
      dataType: "html"

    }).done(function(data){
      // $("#comment_header").append(data); : returns the #comment_header
      // element
      //
      // HOWEVER, this returns the newly-added element
      var comment_form = $(data).appendTo("#comment_header");
      var gross_hack = $("form[method='post']#submit_comment")


      gross_hack.on('submit', function(){
        event.preventDefault();
        $.ajax({
          url:target.action,
          method: "post",
          data: gross_hack.serialize(),
          dataType: 'json'

        }).done(function(data){
          alert("json is awesome! " + data)
        }).fail(function() {
          // :(
        });
      });
    });
  });
});


