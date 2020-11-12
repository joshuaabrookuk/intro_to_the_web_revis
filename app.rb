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

get '/cat' do
  "<div>
  <img style='border: dashed red;', src='http://bit.ly/1eze8aE'>
  </div>"
end
