class Truck < ApplicationRecord
    has_many :foods
    def sell(desired_food)
        # first, collect the inventory for this truck
        this_trucks_foods = Food.where(truck_id: self.id)
        # then find desired food by name from this truck's inventory
        # TODO: refactor to .where() to allow more flexible searching by name etc
        food = this_trucks_foods.find_by( 
            type: desired_food[:type], 
            flavor: desired_food[:flavor])
        if food 
            new_qty = food.sold_qty + desired_food[:quantity]
            if new_qty > food.initial_qty
                return {error: 'SO SORRY!'}
            else
                food.sold_qty = new_qty
                if food.save
                    return {message: 'ENJOY!'}, status: 200
                else
                    return {error: 'Error updating food.'}
                end
            end
        else
            # truck didn't have this food
            return {error: 'SO SORRY, DIDN\'T STOCK THAT!'}
        end
        
    end
end
