require 'sinatra'

class MySite < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/blog' do
    erb :myblog/index
  end

end
