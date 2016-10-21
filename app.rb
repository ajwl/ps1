require 'sinatra'
require 'sprockets'

module AssetHelpers
  def asset_path(source)
    "/images/" + settings.sprockets.find_asset(source).digest_path
  end
end

class MySite < Sinatra::Base

  #use sprockets to load in images
  set :root, File.dirname(__FILE__)
  set :sprockets, Sprockets::Environment.new(root)
  set :assets_path, File.join(root, 'public')

  sprockets.append_path "public/css"
  sprockets.append_path "public/images"

  configure do
    sprockets.append_path(File.join(root, 'images'))
    sprockets.append_path(File.join(root, 'css'))
    sprockets.append_path(File.join(root, 'fonts'))
    sprockets.append_path(File.join(root, 'javascript'))

    sprockets.context_class.instance_eval do
      include AssetHelpers
    end
  end

  helpers do
    include AssetHelpers
  end

  get '/' do
    erb :'index'
  end

  get '/blog' do
    '_site/_pages/blog.html' #, :views => File.dirname(__FILE__) + '/_pages'
  end

  get '/blog/?*' do
    jekyll_blog(request.path)
  end

  def jekyll_blog(path)
    file_path = File.join(File.dirname(__FILE__), '_site', path.gsub('/blog', ''))
    p file_path
    p "----------------------------------------"
    file_path = File.join(file_path, 'blog.html') unless file_path =~ /\.[a-z]+$/i
    p file_path

    if File.exist?(file_path)
      file = File.open(file_path, 'r+')
      contents = file.read
      file.close
    end

    p contents
  end

end
