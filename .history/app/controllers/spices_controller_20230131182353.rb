class SpicesController < ApplicationController
    def index

        render json: Spice.all

    end

    def create

    end

    def update

    end

    def destroy

    end
end
