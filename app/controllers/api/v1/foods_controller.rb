class Api::V1::FoodsController < ApplicationController
    before_action :set_food, only: [:show, :destroy]
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

    def create
        food = Food.new(
            name: params[:name],
            price: params[:price],
            initial_qty: params[:initial_qty],
            sold_qty: params[:sold_qty] || 0
        )
        if food.save
            render json: food, status: 200
        else
            render json: {error: 'Error creating food.'}
        end
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

    def show
        if @food
            render json: @food, status: 200
        else
        end
    end

    def destroy
        @food.destroy
        head :no_content
    end

    private
    def set_food
        @food = Food.find_by(id: params[:id])
    end
end