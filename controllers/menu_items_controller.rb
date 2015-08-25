class MenuItemsController < ApplicationController

  # '/menu_items'
  get '/' do
    @menu_items = MenuItem.all
    erb :'menu_items/index'
  end

  # '/menu_items/new'
  get '/new' do
    erb :'menu_items/new'
  end

  # '/menu_items'
  post '/' do
    MenuItem.create(params[:menu_item])
    redirect '/'  # direct to the SHOW
  end

  # '/menu_items'
  delete '/:id' do
    menu_item = MenuItem.find(params[:id])
    menu_item.food_orders.each {|food_order| food_order.delete }
    menu_item.delete()
    redirect '/'
  end

end
