source "https://rubygems.org"

ruby "3.2.0"

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
gem "httparty"

group :development, :test do
  # gem "debug", platforms: %i[mri windows], require: "debug/prelude" # Não compatível com Ruby 3.2
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "dotenv-rails", "~> 2.8.0"
end

group :development do
  gem "web-console"
  gem "sqlite3", "~> 2.7"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem "pg", "~> 1.4"
end
