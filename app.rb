require 'sinatra'
set :session_secret, 'super secret'

get '/' do
  'Hello World'
end

get '/secret' do
  'secret page'
end

get '/scream' do
  'headshot'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/name-cat' do
  p params
  @name = params[:name]
  erb(:index)
end