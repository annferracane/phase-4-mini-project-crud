class SpicesController < ApplicationController
    def index
        render json: Spice.all, status: :ok
    end

    def create(spice_params)
        Spice.create(spice_params)

    end

    def update

    end

    def destroy

    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

    def find_spice
        Spice.find(params[:id])
    end
end
