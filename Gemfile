source 'https://rubygems.org'

ruby '2.2.2'

gem 'rails', '4.2.1'
gem 'slim-rails'
gem 'jquery-rails'
gem 'unicorn-rails'
gem 'pg'
gem 'role_model'
gem 'font-awesome-rails'
gem 'bootstrap-sass', '~> 3.3.3'
gem 'sass-rails', '~> 5.0'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'responders'
gem 'rails_admin'
gem 'searchkick'
gem 'better_errors'

#Payment
gem "braintree"

#Authentication and authorisation
gem 'sorcery'
gem 'cancancan'

#Social Media API Wrapper
gem 'fb_graph'
gem 'twitter'
gem 'google_plus'

#Mail Chimp API Wrapper
gem 'gibbon', '0.4.6'

#Image Uploaders
gem 'carrierwave'
gem 'mini_magick'
gem 'fog'

#Act as taggable
gem 'acts-as-taggable-on'

#New Relic
gem 'newrelic_rpm'


group :development, :test do
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'letter_opener'
  gem 'launchy'
  gem 'faker'
end

group :development do
  gem 'pry'
  gem 'binding_of_caller'
  gem 'guard-rspec', require: false
  gem 'pry-rails'
  gem 'quiet_assets'
  gem 'spring'
  gem 'heroku_san'
  gem 'rb-readline'
  gem 'rb-inotify', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-fchange', require: false
end

group :test do
  gem 'codeclimate-test-reporter', require: false
  gem 'capybara'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'webmock'
end

group :production do 
  gem 'rails_12factor'
end