class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: plants
    end

    def show
        this_plant = Plant.find_by(id: params[:id])
        render json: this_plant
    end

    def create
        new_plant = Plant.create(plant_params)
        render json: new_plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end

end
