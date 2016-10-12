%w(active_support rubygems sequel fileutils yaml active_support/inflector).each{ | g |
  require g}

require_relative 'downmark_it/downmark_it'

all_files = Dir[ 'blog/_posts', '_posts/*.html']

def transform(all_files)
  all_files.each do |file|

    blogpost = File.open(file, "r+")
    contents = blogpost.read

    content = DownmarkIt.to_markdown contents
    p "removing things from #{file}"
    p content
    blogpost.write content
    blogpost.close
  end
end

transform(all_files)


