require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :method_override, true
    set :sessions, true
    set :session_secret, ENV['SESSION_SECRET']
  end

  get "/" do
    redirect "/ferrets"
  end

end
