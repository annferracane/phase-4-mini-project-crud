class SpicesController < ApplicationController
    def index
        spices = Spice.all
        render :json 

    end

    def create

    end

    def update

    end

    def destroy

    end
end
