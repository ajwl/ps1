require 'sinatra'

class MySite < Sinatra::Base

  get '/' do
    excerpts = File.read(File.join('_site/_pages', 'blog_excerpt.html'))
    erb :'index', locals: { excerpts: excerpts }
  end

  get '/blog' do
    File.read(File.join('_site/_pages', 'blog.html'))
  end

  get '/blog/?*' do
    jekyll_blog(request.path)
  end

  def jekyll_blog(path)
    file_path = File.join(File.dirname(__FILE__), '_site', path.gsub('/blog', ''))
    file_path = File.join(file_path, 'blog.html') unless file_path =~ /\.[a-z]+$/i

    if File.exist?(file_path)
      file = File.open(file_path, 'r')
      contents = file.read
      file.close
    end
    contents
  end

end
