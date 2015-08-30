class AddsStatusToFoodOrders < ActiveRecord::Migration
  def change
    add_column :food_orders, :status, :integer, default: 0
  end
end
