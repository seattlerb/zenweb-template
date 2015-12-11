require "isolate"

Isolate.now! :path => ".isolate" do
  gem "zenweb", "~> 3.7"
end
