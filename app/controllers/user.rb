# The question I"m playing with here is whether we consider "reviews" part of
# the existential being of a user. Perhaps it's smart to say that they're
# /attached/ but not necessarily on this page? This feels like an accounts page
# for the user?  Implementation detail.
# get '/user/:id' do
#
# As an idea..
#

=begin demo_code

  get '/user/:id' do
    erb :"user/profile"
  end

  get '/user/:id/reviews' do
    @reviews = current_user.reviews
    erb :"user/show" # in this template, you could include a partial which shows a user's review?
  end

  .....

  <%= current_user.name %>'s awesome profile

  <p.>.....</p>

  <% if @all_reviews.count > 0 %>
    <% reviews.each do |review| %>
      <%= erb :'_review', locals: {review: review } %>
    <% end %>
  <% end %>

=end

get '/user/:id' do
  @all_reviews = current_user.reviews
  erb :"user/show"
end

post '/user/new' do
  @new_user = User.new(name: params[:name], password: params[:password], email: params[:email])

  if @new_user.save!
    session[:user_id] = @new_user.id
    redirect "/user/#{@new_user.id}"
  else
    redirect "/"
  end
end
