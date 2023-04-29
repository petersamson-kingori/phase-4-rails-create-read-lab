class PlantsController < ApplicationController
    def index
      @plants = Plant.all
      render json: @plants.as_json(only: [:id, :name, :image, :price])
    end
      
    def show
      @plant = Plant.find(params[:id])
      render json: @plant.as_json(only: [:id, :name, :image, :price])
    end
      
    def create
      @plant = Plant.new(plant_params)
      if @plant.save
        render json: @plant.as_json(only: [:id, :name, :image, :price]), status: :created
      else
        render json: @plant.errors, status: :unprocessable_entity
      end
    end
      
      
    def plant_params
        params.require(:plant).permit(:name, :image, :price)
      end
      
  end
  