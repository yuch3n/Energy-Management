source 'http://rubygems.org'

gem 'rails', '3.1.0'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'simplecov'
  gem 'factory_girl'
  gem 'sqlite3'
  gem 'ruby-debug19', :require => 'ruby-debug'
  gem 'cucumber-rails', :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'selenium-webdriver', '>= 2.5.0'
  gem 'database_cleaner'
end

group :production do
  gem 'gmaps4rails'
  gem 'pg'
end

gem 'jquery-rails'
gem 'devise'

group :assets, :development do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'gmaps4rails'
  gem 'therubyracer' 
end


