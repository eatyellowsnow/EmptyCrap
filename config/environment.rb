# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Empty::Application.initialize!

config.gem "rspec", :lib => false, :version => ">= 1.2.9"
config.gem "rspec-rails", :lib => false, :version => ">= 1.2.9"
