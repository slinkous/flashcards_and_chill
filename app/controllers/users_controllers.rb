get '/users/register' do
  erb :'users/register'
end

post '/users' do
  @user = User.new(params[:user])
  if @user.save
    redirect :"/users/#{@user.id}"
  else
    erb :'users/register' 
  end
end

get '/users/:id' do
  @user = User.find_by(id: params[:id])
  erb :'users/profile'
end
