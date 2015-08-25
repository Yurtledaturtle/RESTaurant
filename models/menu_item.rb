class MenuItem < ActiveRecord::Base
  has_many :food_orders
  has_many :parties, through: :food_orders
end
