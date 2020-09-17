require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    set :raise_errors, true
    set :method_override, true
    set :sessions, true
    set :session_secret, ENV['SESSION_SECRET']
    register Sinatra::Flash
  end
  
  #This dictates where we startup in views, in browser the homepage
  get "/" do
    redirect "/login"
  end

 # error Active::RecordRecordNotFound do
  # flash[:error] = "Couldn't find that record"
   # redirect "/ferrets"
  #end

  not_found do
    flash[:error] = "Whoops! Couldn't find that route"
    redirect "/ferrets"
  end

  private
  
  def current_user
    User.find_by_id(session[:id]) 
  end

  def logged_in?
    !!current_user
  end


  def redirect_if_not_logged_in
    if !logged_in?
      flash[:error] = "you must be logged in to view this page"
      redirect request.referrer || "/login"
    end
  end

  #work in progress
  #def picked up
  #Ferret.where(picked_up: true)
  #end

end
