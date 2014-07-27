require './main'
use Rack::Session::Cookie
run Rack::Cascade.new [Example, Main]
