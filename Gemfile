source "https://rubygems.org"

ruby "3.2.0" # ou a versão que você está usando

gem "rails", "~> 8.0.2"
gem "propshaft"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false
gem "kamal", require: false
gem "thruster", require: false
gem "tzinfo-data", platforms: %i[windows jruby]
gem 'httparty'


group :development, :test do
  # Remover ou comentar a linha abaixo para evitar conflitos com o Ruby 3.2
  # gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem 'dotenv-rails', '~> 2.8.0'
  gem "httparty"
end

group :development do
  gem "web-console"
  gem "sqlite3", "~> 1.4"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem "pg", "~> 1.4"
end
