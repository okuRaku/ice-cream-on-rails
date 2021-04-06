class Api::V1::FoodsController < ApplicationController
    def index
        foods = Food.all
        render json: {
            inventory: foods, 
            sales: {
                units: foods.sum {|food| food.sold_qty },
                revenue: foods.sum {|food| food.sold_qty * food.price }
            } 
            }, status: 200
    end

    def buy
        food = Food.find_by(name: params[:name])
        new_qty = food.sold_qty + params[:quantity]
        if new_qty > food.initial_qty
            render json: {error: 'SO SORRY!'}
        else
            food.sold_qty = new_qty
            if food.save
                render json: {message: 'ENJOY!'}, status: 200
            else
                render json: {error: 'Error updating food.'}
            end
        end
    end
end