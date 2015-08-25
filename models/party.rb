class Party < ActiveRecord::Base
  has_many :food_orders
  has_many :menu_items, through: :food_orders
end
