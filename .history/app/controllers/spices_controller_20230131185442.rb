class SpicesController < ApplicationController
    def index
        render json: Spice.all, status: :ok
    end

    def create
        render json: Spice.create(spice_params), status: :created
    end

    def update
        spice = find_spice
        spice.update(spice_params)
        render json: spice.update(spice_params), status: :accepted
    end

    def destroy
        find_spice.destroy
        head :no_content
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

    def find_spice
        Spice.find(params[:id])
    end
end
