class SpicesController < ApplicationController
    def index
        render json: Spice.all, status: :ok
    end

    def create

    end

    def update

    end

    def destroy

    end

    private

    def find_spice
        
    end
end
