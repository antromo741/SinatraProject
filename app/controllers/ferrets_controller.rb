class FerretsController < ApplicationController

  # GET: /ferrets
  get "/ferrets" do
    @ferrets = Ferret.all
    erb :"/ferrets/index.html"
  end

  # GET: /ferrets/new
  get "/ferrets/new" do
    erb :"/ferrets/new.html"
  end

  # POST: /ferrets
  post "/ferrets" do
    redirect "/ferrets"
  end

  # GET: /ferrets/5
  get "/ferrets/:id" do
    erb :"/ferrets/show.html"
  end

  # GET: /ferrets/5/edit
  get "/ferrets/:id/edit" do
    erb :"/ferrets/edit.html"
  end

  # PATCH: /ferrets/5
  patch "/ferrets/:id" do
    redirect "/ferrets/:id"
  end

  # DELETE: /ferrets/5/delete
  delete "/ferrets/:id/delete" do
    redirect "/ferrets"
  end
end
