class PartiesController < ApplicationController

#Party Index-show all the parties
  get '/' do
    @parties = Party.all
    erb :'parties/index'
  end

#create new party
  get '/new' do
    @parties = Party.all
    erb :'parties/new'
  end

#post new party
  post '/' do
    party = Party.create(params[:party])
    redirect "/parties/#{party.id}"
  end

#show party
  get '/:id' do
    @party = Party.find(params[:id])
    @food_orders = FoodOrder.all.where(party_id: params[:id])
    @menu_items = MenuItem.all
    erb :'parties/show'
  end

#delete party
  delete '/:id' do
    party = Party.find(params[:id])
    party.food_orders.each {|food_order| food_order.delete }
    party.delete()
    redirect '/'
  end

end
