source 'https://rubygems.org'

gem 'rails', '3.2.8'

gem 'pg'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

gem 'simple-rails-deploy'
gem 'unicorn'

gem 'inherited_resources'

gem "rails-backbone"

group :test, :development do
  gem 'pry'

  gem 'fabrication'
  gem 'ffaker'

  gem 'rspec-rails'
  gem 'shoulda', :require => false

  gem 'cucumber'
  gem 'cucumber-rails'

  gem 'cucumber-websteps'

  gem 'database_cleaner'
end