Rails.application.routes.draw do
  get 'items/index'
  devise_for :users
  root "menus#index"
  resources :users
  resources :menus
end
