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





  get 'user/:id/edit' do
    @user = User.find_by_id(params[:id])
     if current_user == @user
    erb :'users/edit'
     else
      redirect "/users/#{@user.id}"
  end
end

  post 
end
end