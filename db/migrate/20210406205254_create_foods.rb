class CreateFoods < ActiveRecord::Migration[6.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.decimal :price
      t.integer :initial_qty
      t.integer :sold_qty

      t.timestamps
    end
  end
end
