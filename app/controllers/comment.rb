get '/review/:id/comment/_new' do
  @current_review = Review.find_by(id: params[:id])
  erb :"comment/_new"
end

post '/review/:id/comment' do
 # p params

  @new_comment = Comment.new(content: params[:content], review_id: params[:id], user_id: current_user.id)

  if @new_comment.save!
    redirect "/review/#{@new_comment.review.id}"
  else
    redirect '/review/:id/comment/_new'
  end

end
