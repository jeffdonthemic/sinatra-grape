ENV['RACK_ENV'] ||= 'development'

require 'rubygems'
require 'bundler'

%w(
grape
mongo
sinatra
).each do |dep|
  require dep
end

$env = ENV['RACK_ENV']
