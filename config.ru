require 'bundler'
Bundler.require()

# MODELS
require './models/menu_item'
require './models/food_order'
require './models/party'

# CONTROLLERS
require './controllers/application_controller'
require './controllers/food_orders_controller'
require './controllers/parties_controller'
require './controllers/menu_items_controller'
require './controllers/welcome_controller'

# ROUTING
map('/menu_items') { run MenuItemsController }
map('/parties') { run PartiesController }
map('/food_orders'){ run FoodOrdersController }
map('/'){ run WelcomeController }
