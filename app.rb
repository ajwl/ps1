require 'sinatra'

class MySite < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/blog' do
    erb :'/blog'
  end

  get '/blog/?*' do
    p "!!!!"
    p request.path
    jekyll_blog(request.path)
  end

  def jekyll_blog(path)
    p File.dirname(__FILE__)

    file_path = File.join(File.dirname(__FILE__), '/blog/_site', path.gsub('/blog', ''))
    p "----------------------------------------"
    p file_path

  end

end
