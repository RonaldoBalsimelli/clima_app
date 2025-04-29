source "https://rubygems.org"

<<<<<<< HEAD
=======
ruby "3.4.1" # ou a versão que você está usando

>>>>>>> c357ecccab93036442709d008a032939c59e43fd
gem "rails", "~> 8.0.2"
gem "propshaft"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "bootsnap", require: false
<<<<<<< HEAD

# Windows não inclui zoneinfo files
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Deploy como Docker container (opcional)
gem "kamal", require: false

# Aceleração para Puma (opcional)
=======
gem "kamal", require: false
>>>>>>> c357ecccab93036442709d008a032939c59e43fd
gem "thruster", require: false

# Apenas no Windows, necessário para fuso horário
gem "tzinfo-data", platforms: %i[windows jruby]

group :development, :test do
<<<<<<< HEAD
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem 'dotenv-rails'
  gem 'httparty'
=======
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "brakeman", require: false
  gem "rubocop-rails-omakase", require: false
  gem "dotenv-rails"
  gem "httparty"
>>>>>>> c357ecccab93036442709d008a032939c59e43fd
end

group :development do
  gem "web-console"
  gem "sqlite3", "~> 1.4"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

<<<<<<< HEAD
group :production do
  gem 'pg', '~> 1.4'
end

gem 'pg', '~> 1.4'
=======
# Heroku (produção) usa PostgreSQL, apenas no Linux
group :production do
  gem "pg", "~> 1.4", platforms: :ruby
end
>>>>>>> c357ecccab93036442709d008a032939c59e43fd
