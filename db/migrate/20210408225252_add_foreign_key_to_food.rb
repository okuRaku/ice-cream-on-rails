class AddForeignKeyToFood < ActiveRecord::Migration[6.1]
  def change
    add_foreign_key :foods, :trucks
  end
end
