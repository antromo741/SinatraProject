require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
    set :sessions, true
    set :session_secret, ENV['SESSION_SECRET']
  end
  
  #This dictates where we startup in views, in browser the homepage
  get "/" do
    erb :welcome
  end

end
