class UsersController < ApplicationController 

    get '/users/new' do 
      # render the form to create a user account
      erb :'users/new'
    end 
  
    post '/users/new' do 
      @user = User.new(email: params[:email], password: params[:password])
      if @user.save
        session[:id] = @user.id
        redirect "/ferrets"
      else 
        erb :'users/new'
      end
    end
  end