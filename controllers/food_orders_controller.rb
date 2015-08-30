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

get '/chef' do
      food_order = FoodOrder.all
      @food_orders = food_order.food_order(:created_at)
      erb :'food_orders/chef'
     end

post '/' do
  food_order = FoodOrder.create(params[:food_order])
  redirect "/parties/#{food_order.party_id}"
end

post "/chef/:id" do
     food_order = FoodOrder.find(params[:id])
     FoodOrder.where(id: "#{food_order.id}").update_all(status: 1)
     redirect "/food_orders/chef"
    end


delete '/:id' do
    food_order = FoodOrder.find(params[:id])
    food_order.delete()
    redirect "/parties/#{food_order.party_id}"
end


end
