get '/auth/signin' do
  erb :'auth/login'
end

get '/auth/logout' do
  session[:user_id] = nil
  redirect '/'
end

put '/auth/login' do
  current_user = User.find_by(email: params[:email])

  if current_user.try(:authenticate, params[:password])
    session[:user_id] = current_user.id
    redirect "/user/#{current_user.id}"
  else
    redirect "/"
  end

end


