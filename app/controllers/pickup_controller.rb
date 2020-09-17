class PickupController < FerretController



    get "/ferrets/:id/pickup" do
        set_ferret
        erb ":ferrets/pickup.html"
    end

  
  #trying to setup a ferret pickup route
    patch "/ferrets/:id/pickup" do
        set_ferret
        redirect_if_not_authorized

        if @ferret.update(picked_up: true)



   
            redirect "/ferrets"
        end
    end
     #view logic with ferret in or out
    patch "/ferrets/:id/dropoff" do
        set_ferret
        redirect_if_not_authorized

        if @ferret.update(picked_up: false)



   
            redirect "/ferrets"
        end
    end

end