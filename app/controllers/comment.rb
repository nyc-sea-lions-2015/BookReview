get '/review/:id/comment/_new' do
  @current_review = Review.find_by(id: params[:id])

  if  request.xhr?
    return erb :"comment/_new", layout: false
  else
    erb :"comment/_new"
  end

end

get '/comment/:id/edit' do
  @current_comment = Comment.find_by(id: params[:id])
  erb :"comment/edit"
end

put '/comment/:id' do
  @existing_comment = Comment.find_by(id: params[:id])
  if @existing_comment
    @existing_comment.content = params[:content]
    @existing_comment.save!
    redirect "/review/#{@existing_comment.review.id}"
  else
     [500, 'something went wrong']
  end
end

post '/review/:id/comment' do
  @new_comment = Comment.new(content: params[:content], review_id: params[:id], user_id: current_user.id)
  if @new_comment.save!
    redirect "/review/#{@new_comment.review.id}"
  else
    redirect '/review/:id/comment/_new'
  end
end

delete '/review/:id/comment/:comment_id' do
  @existing_comment = Comment.find_by(id: params[:comment_id])
  @existing_comment.destroy
  redirect "review/#{params[:id]}"


end
