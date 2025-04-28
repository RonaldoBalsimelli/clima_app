Rails.application.routes.draw do
  root 'weather#index'
  post '/search', to: 'weather#search'
end
