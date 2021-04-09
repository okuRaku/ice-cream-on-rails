class AddTypeToFood < ActiveRecord::Migration[6.1]
  def change
    add_column :foods, :type, :string
    add_column :foods, :flavor, :string
  end
end
