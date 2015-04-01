get '/review/new' do
  erb :'review/new'
end

post 'review/new' do
  @new_post = Post.new(book_title: params[:book_title], author: params[:author])

end
