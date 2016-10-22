require './app.rb'
require 'rack/jekyll'

set :public_folder, 'public'
set :static, false

run MySite
run Rack::Jekyll.new



