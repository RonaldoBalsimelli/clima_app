source "https://rubygems.org"

gem "rails", "~> 8.0.2"
gem "propshaft"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false

# Windows não inclui zoneinfo files
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Deploy como Docker container (opcional)
gem "kamal", require: false

# Aceleração para Puma (opcional)
gem "thruster", require: false

group :development, :test do
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem 'dotenv-rails'
  gem 'httparty'
end

group :development do
  gem "web-console"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem 'pg', '~> 1.4'
end

gem 'pg', '~> 1.4'
