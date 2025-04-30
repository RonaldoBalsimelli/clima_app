Rails.application.routes.draw do
  resources :weathers
  root 'weather#index'
  post '/search', to: 'weather#search'
end
