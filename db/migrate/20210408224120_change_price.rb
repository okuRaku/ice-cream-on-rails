class ChangePrice < ActiveRecord::Migration[6.1]
  def change
    change_column(:foods, :price, :integer)
  end
end
