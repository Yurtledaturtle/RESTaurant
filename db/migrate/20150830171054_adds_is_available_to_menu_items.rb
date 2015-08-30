class AddsIsAvailableToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :is_available, :boolean
  end
end
