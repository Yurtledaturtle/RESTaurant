class WelcomeController < ApplicationController

  get '/' do
    @menu_items = MenuItem.all
    @food_orders = FoodOrder.all
    @parties = Party.all
    erb :index
  end

end
