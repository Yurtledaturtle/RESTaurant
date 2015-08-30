class RemovesAllergensFromMenuItems < ActiveRecord::Migration
  def change
    remove_column :menu_items, :allergens, :boolean
  end
end
