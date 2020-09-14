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
    redirect "/login"
  end

  error Active::RecordRecordNotFound do
    @error = "Couldn't find that record"
    erb :welcome
  end


  
  private
  
  def current_user
    User.find_by_id(session[:id]) 
  end

  def logged_in?
    !!current_user
  end

end
