class Api::V1::TrucksController < ApplicationController
    include Common
    def index
        trucks = Truck.all
        foods = Food.all
        render json: {
            trucks: trucks, 
            sales: calculate_sales(foods)
        }, status: 200
    end

    def show
        truck = Truck.find_by(id: params[:id])
        foods = Food.where(truck_id: truck.id)
        render json: {
            truck: truck,
            inventory: foods,
            sales: calculate_sales(foods)
        }, status: 200
    end

    def sell
        truck = Truck.find_by(id: params[:id])
        render json: truck.sell(params[:food])
    end
end