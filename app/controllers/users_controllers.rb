get '/users/new' do
  erb :'users/new'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect :"/users/#{@user.id}"
  else
    erb :'users/new' #error handling?
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'users/show'
end
