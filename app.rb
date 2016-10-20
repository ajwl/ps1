require 'sinatra'

class MySite < Sinatra::Base

  get '/' do
    erb :'index'
  end

  get '/blog' do
    erb :'/blog/blog'
  end

  get '/blog/?*' do
    p "!!!!"
    p request.path
    jekyll_blog(request.path)
  end

  def jekyll_blog(path)
    file_path = File.join(File.dirname(__FILE__), '/blog/_site', path.gsub('/blog', ''))
    p "----------------------------------------"
    p file_path
    file_path = File.join(file_path, 'blog.erb') unless file_path =~ /\.[a-z]+$/i

    if File.exist?(file_path)
      file = File.open(file_path, a)
      contents = file.read
      file.close

      p contents

    end

  end

end
