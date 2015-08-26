class CreateFoodOrders < ActiveRecord::Migration
    def change
      create_table :food_orders do |t|
        t.integer :menu_item_id
        t.integer :party_id
        t.timestamps
      end
    end
  end
