class Truck < ApplicationRecord
    has_many :foods
    def sell(desired_food)
        # first, collect the inventory for this truck
        this_trucks_foods = foods
        # then find desired food by name from this truck's inventory
        # TODO: refactor to .where() to allow more flexible searching by name etc
        food = this_trucks_foods.find_by( 
            type: desired_food[:type], 
            flavor: desired_food[:flavor])
        if food 
            new_qty = food.sold_qty + desired_food[:quantity]
            if new_qty > food.initial_qty
                return false # error, no qty left
            else
                food.sold_qty = new_qty
                if food.save
                    return true # Good save
                else
                    return false # error updating food
                end
            end
        else
            # truck didn't have this food
            return false 
        end
        
    end
end
