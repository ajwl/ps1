require 'sinatra'

class MySite < Sinatra::Base

  get '/' do
    excerpts = render_html('blog_excerpt.html')
    erb :'index', locals: { excerpts: excerpts }
  end

  get '/blog' do
    render_html('blog.html')
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
      contents
    else
      not_found do
        status 404
      end
    end
  end

  def render_html(page)
    html_folder = '_site/_pages'
    File.read(File.join(html_folder, "#{page.to_s}"))
  end

end
