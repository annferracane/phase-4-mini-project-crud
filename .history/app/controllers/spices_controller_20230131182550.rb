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

    def spice_params
        params.permit()


    end

    def find_spice
        Spice.find(params[:id])
    end
end
