#!/usr/bin/env rake

HTML_DIR="/Library/WebServer/Documents"

require "rubygems"

load ".isolate.rb"

require "zenweb/tasks"

def extra_wirings
  # site  = $website
  # pages = site.pages
  # html  = site.pages.reject { |k,p| p.url_path !~ /\.html/ }
  # cats  = site.categories

  # pages["sitemap.xml.erb"].         depends_on html
  # pages["atom.xml.erb"].            depends_on site.pages_by_date.first(30)
  # pages["index.html.erb"].          depends_on html

  # pages["blog/index.html.erb"].     depends_on cats.blog
  # pages["projects/index.html.erb"]. depends_on cats.projects
  # pages["pages/index.html.erb"].    depends_on cats.pages
end

task :extra_wirings do
  extra_wirings
end

task :push do
  sh "rsync -rv --del .site/ #{HTML_DIR}"
end
