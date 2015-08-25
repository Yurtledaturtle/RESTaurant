class FoodOrdersController < ApplicationController

  # '/food_orders'
  get '/' do
    @food_orders = FoodOrder.all
    erb :'food_orders/index'
  end

  # '/food_orders/new'
  get '/new' do
    @menu_items = MenuItem.all
    @parties = Party.all
    erb :'food_orders/new'
  end

  # '/food_orders'
  post '/' do
    FoodOrder.create(params[:food_order])
    redirect '/'  # direct to the SHOW
  end


end
