require 'bundler'
Bundler.require()

require './models/menu_item'
require './models/party'

#routes

get '/'  do
  "hello"
end
