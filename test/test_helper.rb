ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require "capybara/rails"
require "capybara/minitest"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all

  # Add more helper methods to be used by all tests here...
end

class ActionDispatch::IntegrationTest
  JS_DRIVER = :selenium_chrome_headless

  include Capybara::DSL
  include Capybara::Minitest::Assertions

  Capybara.default_driver = :rack_test
  Capybara.javascript_driver = JS_DRIVER
  Capybara.default_max_wait_time = 2

  # Use super wherever this method is redefined in your individual test classes
  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
