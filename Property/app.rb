require 'bundler'
Bundler.require

require_relative 'connection'
ROOT_DIR = Dir.pwd
Dir[ROOT_DIR + "/models/*.rb"].each { |file| require file }


enable :sessions


get '/' do
  if session[:current_user]
    # For all of nyc instead of just BK, use Property.all below
    @users = User.all
    @properties = Property.where("boro = '3'")
    erb :index
  else
    redirect '/sessions/new'
  end
end

get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.new(params[:user])
  user.password = params[:password]
  user.save
  redirect '/profiles'
end

get '/profiles' do
  if session[:current_user]
    @user = User.find(session[:current_user])
    erb :'/profiles/index'
  else
    redirect '/'
  end
end

get '/sessions/new' do
  erb :'/sessions/new'
end

post '/sessions' do
  user = User.find_by({username: params[:username]})
  if user.password == params[:password]
    session[:current_user] = user.id
    redirect '/'
  else
    redirect '/users/new'
  end
end

delete '/sessions' do
  session[:current_user] = nil
  redirect '/users/new'
end




