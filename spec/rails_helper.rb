# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
# Prevent database truncation if the environment is production
abort("The Rails environment is running in production mode!") if Rails.env.production?

require 'rspec/rails'
# require 'rspec/autorun'
require 'database_cleaner'
require 'capybara/rspec'
require 'shoulda/matchers'
require_relative 'support/controller_helpers'
require 'devise'
require 'spec_helper'
require 'factory_girl_rails'
require 'delegate'
require 'active_support/concern'


Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

Capybara.app_host = "http://example.com"

RSpec.configure do |config|

  config.include ControllerHelpers, type: :controller
  config.include Warden::Test::Helpers
  config.include FactoryGirl::Syntax::Methods
  config.include Devise::TestHelpers, type: :controller

  Warden.test_mode!

  config.after do
    Warden.test_reset!
  end
  config.order = 'random'
  config.include Rails.application.routes.url_helpers
  config.include Capybara::DSL

  Shoulda::Matchers.configure do |config|
    config.integrate do |with|
      # Choose a test framework:
      with.test_framework :rspec

      # Or, choose the following (which implies all of the above):
      with.library :rails
    end
  end
end
