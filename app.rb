require 'sinatra'
require 'sprockets'

class MySite < Sinatra::Base

  #new sprockets environment
  set :root, File.dirname(__FILE__)
  set :environment, Sprockets::Environment.new(root)

  environment.append_path "public/css"
  environment.append_path "public/images"

  get '/' do
    erb :'index'
  end

  get '/blog' do
    erb :'/blog', :views => File.dirname(__FILE__) + '/blog'
  end

  get '/blog/?*' do
    jekyll_blog(request.path)
  end

  def jekyll_blog(path)
    file_path = File.join(File.dirname(__FILE__), '/blog/_site', path.gsub('/blog', ''))
    p "----------------------------------------"
    file_path = File.join(file_path, 'blog.erb') unless file_path =~ /\.[a-z]+$/i

    p file_path

    if File.exist?(file_path)
      file = File.open(file_path, 'r+')
      contents = file.read
      file.close
    end

    p contents
  end





end
