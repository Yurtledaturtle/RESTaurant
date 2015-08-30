class ChangeAllergensToIsAvailableInMenuItems < ActiveRecord::Migration
  def change
    change_column :menu_items, :allergens, :boolean
  end

  def down
    change_column :menu_items, :is_available, :boolean
  end
end
