class Party < ActiveRecord::Base
  has_many :food_orders
  has_many :menu_items, through: :food_orders

  enum status: {open: 0, closed: 1}
end
