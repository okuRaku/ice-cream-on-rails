class Api::V1::FoodsController < ApplicationController
    include Common
    def index
        foods = Food.all
        render json: {
            inventory: foods, 
            sales: calculate_sales(foods)
            }, status: 200
    end
end