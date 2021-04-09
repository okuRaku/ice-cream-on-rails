class AddTruckToFoods < ActiveRecord::Migration[6.1]
  def change
    add_reference :foods, :truck
  end
end
