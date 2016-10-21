require 'rack/jekyll'
require './app.rb'

run Rack::Jekyll.new
run MySite

set :public_folder, 'public'

set :static, true
