$(".blog_posts.index").ready(function(){
  debugger
  $.getJSON('https://public-api.wordpress.com/rest/v1.1/sites/tryvoices.wordpress.com/comments', function(data){
    $.each(data.comments, function(index, comment){
      var post = $('#post_'+comment.post.ID)
      var html =  '<div id="comment_'+comment.ID+'" class="col-md-12">'+
                    '<div class="col-md-2"><a href="'+comment.author.URL+'" targe="_blank">'+
                      '<img class="comment-author-image" src="'+comment.author.avatar_URL+'"></img></a>'+
                        '<p class="comment-author">'+comment.author.first_name+' '+comment.author.last_name+'</p></div>'+
                      '<div class="col-md-10 comment">'+comment.content+'</div>'+
                    '</div></div>';
      post.append(html);
    });
  });
});
