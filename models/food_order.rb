class FoodOrder < ActiveRecord::Base
  belongs_to :menu_item
  belongs_to :party

  enum status: {open: 0, delivered: 1, closed: 2}
end
