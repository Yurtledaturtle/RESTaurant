class AddsSubcategoryToMenuItems < ActiveRecord::Migration
  def change
    add_column :menu_items, :sub_category, :string
  end
end
