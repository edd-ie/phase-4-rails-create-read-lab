class PlantsController < ApplicationController
    wrap_parameters format: []

    def index
        x = Plant.all
        render json: x, only: [:name, :image, :price], status: :ok
    end

    def show
        x = Plant.find(params[:id])
        render json: x, only: [:name, :image, :price], status: :ok
    end

    def create
        values = Plant.create(new_plant)
        render  json: values, only: [:id, :name, :image, :price], status: :created
    end

    private

    def new_plant
        params.permit(:name, :image, :price)
    end

end
