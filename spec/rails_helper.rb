ENV["RACK_ENV"] = "test"

require File.expand_path("../../config/environment", __FILE__)
abort("DATABASE_URL environment variable is set") if ENV["DATABASE_URL"]

require "rspec/rails"
require 'capybara/rails'
require 'capybara/rspec'
require 'database_cleaner'
require 'shoulda/matchers'
require 'paperclip/matchers'

Dir[Rails.root.join("spec/support/**/*.rb")].sort.each { |file| require file }

module Features
  # Extend this module in spec/support/features/*.rb
  include Formulaic::Dsl
end

RSpec.configure do |config|
  config.include Features, type: :feature
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = true
end

ActiveRecord::Migration.maintain_test_schema!
        Capybara.javascript_driver = :webkit
        Faker::Config.locale = :"en-gb"