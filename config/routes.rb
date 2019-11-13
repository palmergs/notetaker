Rails.application.routes.draw do
  resources :todos
  resources :item_definitions

  root to: 'item_definitions#index'
end
