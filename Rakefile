#!/usr/bin/env rake

require "rubygems"

load ".isolate.rb"

zenweblib = File.expand_path("~/Work/p4/zss/src/ZenWeb/dev/lib")

$: << zenweblib

Rake.application.options.rakelib << File.join(zenweblib, "zenweb")

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
  sh "rsync -rv --del .site/ /Library/WebServer/Documents/"
end

task :beta => [:clean, :generate] do
  sh "rsync -avz --del .site/ e:/Users/www/new.zenspider.com/"
end
