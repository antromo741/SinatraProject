class FerretsController < ApplicationController

  # GET: /ferrets
  get "/ferrets" do
    @ferrets = Ferret.all
    erb :"/ferrets/index.html"
  end

  # GET: /ferrets/new
  get "/ferrets/new" do
    redirect "/login" if not logged_in?
    @ferret = Ferret.new
    erb :"/ferrets/new.html"
  end

  # POST: /ferrets
  post "/ferrets" do
   # binding.pry
    redirect "/login" if not logged_in?
    @ferret = current_user.ferrets.build(ferret_params)
    if @ferret.save
    redirect "/ferrets"#{ferret.id} wouldnt work with redirecting to that new ferret
    else 
      erb :"/ferrets/new.html"
    end
  end

  # GET: /ferrets/5
  get "/ferrets/:id" do
    @ferret = Ferret.find(params[:id])
    erb :"/ferrets/show.html"
    
  end

  # GET: /ferrets/5/edit
  get "/ferrets/:id/edit" do
    @ferret = Ferret.find(params[:id])
    erb :"/ferrets/edit.html"
  end

  # PATCH: /ferrets/5
  patch "/ferrets/:id" do
    @ferret = Ferret.find(params[:id])
    @ferret.update(ferret_params)
    redirect "/ferrets/#{@ferret.id}"
  end

  # DELETE: /ferrets/5/delete
  delete "/ferrets/:id" do
    @ferret = Ferret.find(params[:id])
    @ferret.destroy
    redirect "/ferrets"
  end

  #get "/ferrets/:id/adopt" do
  #  @ferrets = Ferret.all
  #  erb :"ferrets/adopt.html"
  #end

 # post "/ferrets/:id/adopt" do
   # @ferret = Ferret.find(params[:id])
   # @ferret.update(ferret_params)
   # redirect "/ferrets/#{@ferret.id}"
  #end



  private 

  def ferret_params
    allowed = ["name", "hair","short_description"]
    params.select{|k| allowed.include?(k)}
  end


end
