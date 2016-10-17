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
    #jekyll_blog('/blog/_posts/2012-06-29-hello-world.md')
  end

  def jekyll_blog(path)
    file_path = File.join(File.dirname(__FILE__), '/blog/_posts', path.gsub('/blog'),'')
    p "----------------------------------------"
    p file_path

  end

end
