require 'spec_helper'

ENV['RACK_ENV'] ||= 'test'

require_relative '../config/environment'

abort('You run tests in production mode. Please don`t do this!') if Application.production?
Dir["#{Application.opts[:root]}/spec/support/**/*.rb"].sort.each { |f| require f }

RSpec.configure do |config|
  config.include Rack::Test::Methods
end
