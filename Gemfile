# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

gem 'rails', '~> 7.0.4', '>= 7.0.4.2'

# Application server
gem 'puma', '~> 5.0'

# Databases
gem 'pg'
gem 'redis'

# Additional Rails tooling
gem 'bootsnap', require: false
gem 'jbuilder'

# Frontend tooling
gem 'jsbundling-rails'
gem 'sprockets-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

group :development, :test do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails'
  gem 'rubocop', require: false
end

group :development do
  gem 'ruby-lsp', require: false
  gem 'web-console'
end
