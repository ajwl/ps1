require 'rack/jekyll'
require './app.rb'

set :public_folder, 'public'
set :static, true

run Rack::Jekyll.new
run MySite



