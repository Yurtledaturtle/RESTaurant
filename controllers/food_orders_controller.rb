class FoodOrdersController < ApplicationController

  get '/' do
   @food_orders = FoodOrder.all
   erb :'food_orders/index'
 end

 get '/new' do
  @parties = Party.all
  @menu_items = MenuItem.all
  erb :'food_orders/new'
end

# '/food_orders'
post '/' do
  food_order = FoodOrder.create(params[:food_order])
  redirect "/parties/#{food_order.party_id}"
end


delete '/:id' do
  menu_item = MenuItem.find(params[:id])
  menu_item.delete()
  redirect '/'
end


end
