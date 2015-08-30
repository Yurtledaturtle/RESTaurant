class ChangesPriceDatatypeInMenuItems < ActiveRecord::Migration
  def change
    change_column :menu_items, :price, :decimal
  end
  def down
    change_column :items, :price, :integer
  end
end
