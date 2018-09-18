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

post '/name-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat_name_form' do
  erb(:cat_name_form)
end
