Rails.application.routes.draw do
  resources :todos
  resources :item_definitions

  get 'home/welcome'
  get 'home/about'

  root to: 'home#welcome'
end
