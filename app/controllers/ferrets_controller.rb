class FerretsController < ApplicationController

  # GET: /ferrets
  get "/ferrets" do
    @ferrets = Ferret.all
    erb :"/ferrets/index.html"
  end

  # GET: /ferrets/new
  get "/ferrets/new" do
    redirect_if_not_logged_in
    #redirect "/login" if not logged_in?
    @ferret = Ferret.new
    erb :"/ferrets/new.html"
  end

  # POST: /ferrets
  post "/ferrets" do
   # binding.pry
   #redirect "/login" if not logged_in?
    redirect_if_not_logged_in
    @ferret = current_user.ferrets.build(ferret_params)
    if @ferret.save
    redirect "/ferrets"#{ferret.id} wouldnt work with redirecting to that new ferret
    else 
      erb :"/ferrets/new.html"
    end
  end

  # GET: /ferrets/5
  get "/ferrets/:id" do
    set_ferret
    erb :"/ferrets/show.html"
    
  end

  # GET: /ferrets/5/edit
  get "/ferrets/:id/edit" do
    set_ferret
    redirect_if_not_authorized
    erb :"/ferrets/edit.html"
  end

  # PATCH: /ferrets/5
  patch "/ferrets/:id" do
    #@ferret = Ferret.find(params[:id])
    set_ferret
    redirect_if_not_authorized
    if @ferret.update(ferret_params)
      flash[:success] = "Ferret Form succesfully updated"
      redirect "/ferrets/#{@ferret.id}"
    else 
      erb :"/ferrets/edit.html"
    end
  end

  # DELETE: /ferrets/5/delete
  delete "/ferrets/:id" do
    #@ferret = Ferret.find(params[:id])
    set_ferret
    redirect_if_not_authorized
    @ferret.destroy
    redirect "/ferrets"
  end

  #FFA = ferret for adoption
  #I believe I need another model and controller to implement this
  #get "/ferrets/:id/adopt" do
  #  @ffa = Ferret.where(user_id: nil)
  #  erb :"ferrets/adopt.html"
  #end

 # post "/ferrets/:id/adopt" do
  #
   # @ffa = Ferret.find(params[:id])
   # @ffa.update(ferret_params)
   # redirect "/ferrets/#{@ffa.id}"
  #end
  #
  #wed also need an adoption get post edit and update 
  #so that the ferret could be asigned a new ferret


  private 

  def ferret_params
    allowed = ["name", "hair","short_description"]
    params.select{|k| allowed.include?(k)}
  end

  def set_ferret
    @ferret = Ferret.find_by_id(params[:id])
    if @ferret.nil?
      flash[:error] = "Couldn't find a ferret with id: #{params[:id]}"
      redirect "/ferrets"
    end
  end

  def authorize_ferret(ferret)
    current_user == ferret.user  
  end

  def redirect_if_not_authorized
    redirect_if_not_logged_in
    if !authorize_ferret(@ferret)
    flash[:error] = "You don't have permission to do that action"
      redirect "/ferrets"
    end
  end
   
   
end
