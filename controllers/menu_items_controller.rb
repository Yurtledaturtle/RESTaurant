class MenuItemsController < ApplicationController

  get '/' do
    @menu_items = MenuItem.all
    erb :'menu_items/index'
  end


  get '/new' do
    @menu_items = MenuItem.all
    erb :'menu_items/new'
  end


  post '/' do
    menu_item = MenuItem.create(params[:menu_item])
    redirect "/"
  end

  #delete item
    delete '/:id' do
      menu_item = MenuItem.find(params[:id])
      menu_item.food_orders.each {|food_order| food_order.delete }
      menu_item.delete()
      redirect '/'
    end

    delete '/:id' do
      party = Party.find(params[:id])
      party.food_orders.each {|food_order| food_order.delete }
      party.delete()
      redirect '/'
    end

end
