get '/login' do
  erb :'sessions/login'
end

post '/sessions' do
  @user = User.authenticate(params[:user][:email],  params[:user][:password])
  if @user
    session[:user_id] = @user.id
    redirect '/users/profile'
  else
    redirect '/login'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end
