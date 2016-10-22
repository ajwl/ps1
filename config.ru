require './app.rb'
require 'rack/jekyll'

run Rack::Jekyll.new

set :public_folder, 'public'
set :static, true

run MySite


