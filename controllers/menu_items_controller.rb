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
    redirect 'menu_items'
  end

  #delete item
     delete '/:id' do
       menu_item = MenuItem.find(params[:id])
       menu_item.delete()
       redirect 'menu_items'
     end

end
