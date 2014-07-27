ENV['RACK_ENV'] ||= 'test'

require 'rspec'
require 'rack/test'
require './main'

Dir[('./spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |c|
  c.mock_with :rspec
  c.include Rack::Test::Methods
end
