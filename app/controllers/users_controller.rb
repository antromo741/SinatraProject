class UsersController < ApplicationController 

    get '/users/new' do 
      erb :'users/new'
    end 
  
    post '/users/new' do 
      user = User.new(email: params[:email], password: params[:password])
      user.save
     # user = User.find_by_email(params[:email])
      # if they typed in the right password then log them in, if not show them the form again
      if user && user.authenticate(params[:password]) 
        session[:id] = user.id
        redirect "/ferrets"
      else 
        @error = "Must be an email"
        erb :'/users/new'
      end
    end
  end