get '/user/:id' do
  @all_reviews = current_user.reviews
  erb :"user/show"
end

post '/user/new' do
  @new_user = User.create(name: params[:name], password: params[:password], email: params[:email])

  if @new_user
    session[:user_id] = @new_user.id
    redirect "/user/#{@new_user.id}"
  else
    redirect "/"
  end
end
