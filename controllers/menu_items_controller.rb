class MenuItemsController < ApplicationController

  get '/edit' do
      @menu_items = MenuItem.all
      erb :'menu_items/edit'
    end

  get '/chef' do
    @menu_items = MenuItem.all
    erb :'menu_items/index'
  end


  get '/new' do
    @menu_items = MenuItem.all
    erb :'menu_items/new'
  end


  post '/' do
    menu_item = MenuItem.create(params[:menu_item])
    redirect '/'
  end

  #delete item
     delete '/:id' do
       menu_item = MenuItem.find(params[:id])
       menu_item.delete()
       redirect '/'
     end

end
