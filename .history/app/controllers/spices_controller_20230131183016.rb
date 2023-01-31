class SpicesController < ApplicationController
    def index
        render json: Spice.all, status: :ok
    end

    def create(spice_params)
        render json: Spice.create(spice_params), status: :created
    end

    def update
        render json: find_spice.update(spice_params), status: :accepted
    end

    def destroy
        find_spice.destroy
        head 

    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

    def find_spice
        Spice.find(params[:id])
    end
end
