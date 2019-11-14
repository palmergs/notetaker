Rails.application.routes.draw do
  resources :todos
  resources :item_definitions

  get 'welcome', to: 'home#welcome'
  get 'about', to: 'home#about'

  root to: 'home#welcome'
end
