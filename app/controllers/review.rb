get '/review/new' do
  erb :'review/new'
end

post '/review/new' do
  @new_post = Review.new(book_title: params[:book_title], author: params[:author], start_date: params[:start_date], finish_date: params[:finish_date], review_content: params[:review_content], book_rating: params[:book_rating], user_id: current_user.id)

  if @new_post.save!
    redirect "/review/#{@new_post.id}"
  else
    redirect "/review/new"
  end

end

get '/review/all' do
  @all_reviews = Review.all
  erb :'review/all'
end

get '/review/:id' do
  @current_review = Review.find_by(id: params[:id])
  erb :'review/show'
end


