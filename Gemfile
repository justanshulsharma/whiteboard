source 'https://rubygems.org'
ruby '2.2.2'
gem 'rails', '4.1.0.rc1'

gem 'pg'
gem 'unicorn'
gem 'jquery-rails'
gem 'omniauth-google-oauth2'
gem 'github-markdown', require: 'github/markdown'
gem 'exceptional'
gem 'protected_attributes'
gem 'sass-rails'
gem 'compass-rails'
gem 'coffee-rails'
gem 'uglifier'
gem 'bootstrap-sass', '~> 2.3.2'
gem 'font-awesome-sass-rails'

group :development, :production do
  gem 'rails_12factor'
end

group :test, :development do
  gem 'minitest'
  gem 'rspec-rails', '2.14.0'
  gem 'shoulda-matchers'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'capybara-accessible'
  gem 'launchy'
  gem 'database_cleaner'
  gem 'letter_opener'
  gem 'timecop'
  gem 'foreman'
  gem 'fakefs', :require => 'fakefs/safe'
  gem 'dotenv', '~> 0.9.0'
  gem 'pry-rails'
end

group :test do
  gem 'selenium-webdriver'
end

group :development do
  gem 'auto_tagger'
  gem 'better_errors'
  gem 'binding_of_caller'
end

gem 'capistrano', '~> 3.1.0'
gem 'capistrano-bundler', '~> 1.1.2'
gem 'capistrano-rails', '~> 1.1.1'
gem 'capistrano-rbenv', github: "capistrano/rbenv"
