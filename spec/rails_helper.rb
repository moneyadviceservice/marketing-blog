# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../dummy/config/environment", __FILE__)
require 'rspec/rails'
require 'factory_girl_rails'
require "capybara/rspec"
require 'pry'

Dir[File.dirname(__FILE__) + "/support/**/*.rb"].each {|f| require f}

ActiveRecord::Migrator.migrations_paths.tap do |paths|
  paths << File.expand_path('../../spec/dummy/db/migrate', __FILE__)
  paths << File.expand_path('../../db/migrate', __FILE__)
end

RSpec.configure do |config|

  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  c.include FactoryGirl::Syntax::Methods

end
