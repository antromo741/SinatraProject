class PickupController < FerretsController


  #view logic with ferret in or out
  #trying to setup a ferret pickup route
    patch "/ferrets/:id/pickup" do

        set_ferret
        redirect_if_not_authorized

        if @ferret.update(picked_up: true)   
            redirect "/ferrets"
        end
    end
   
    patch "/ferrets/:id/dropoff" do
        set_ferret
        redirect_if_not_authorized

        if @ferret.update(picked_up: false)
            redirect "/ferrets"
        end
    end

end