require './app.rb'
require 'rack/jekyll'
require 'rubygems'
require 'bundler'

run Rack::Jekyll.new

set :public_folder, 'public'
set :static, true

run MySite


