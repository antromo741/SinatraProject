class UsersController < ApplicationController 

  get '/users/new' do 
    erb :'users/new'
  end 
  
  post '/users/new' do 
    user = User.new(email: params[:email], password: params[:password])
    user.save
    if user && user.authenticate(params[:password]) 
      session[:id] = user.id
      redirect "/login"
    else
      @error = "Must be an email"
      erb :'/users/new'
    end
  end
end