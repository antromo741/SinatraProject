class UsersController < ApplicationController
    #set :views, 'app/views/users'

    get '/users/new' do

        erb :'users/new'
    end

    post '/users' do 
        @user = User.new(email: params[:email], password: params[:password])
        binding.pry
        if @user.save
            session[:id] = @user.id 
            #redirect "/users/login or /users/profile"
        else 
            #@errors= @user.errors.full_messages
            erb :'users/new
        end
    end
end
