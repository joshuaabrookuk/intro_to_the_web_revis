require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'This is a secret page!'
end

get '/shotgun' do
  "If I can see this shotgun is set up correctly #{Time.now}"
end

get '/random-cat' do
  @name = ['Amigo','Oscar','Viking'].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
