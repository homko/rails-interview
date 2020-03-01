ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'factory_bot_rails'

class ActiveSupport::TestCase
  Dir[Rails.root.join('test/support/**/*.rb')].each { |f| require f }
  # Add more helper methods to be used by all tests here...
end
