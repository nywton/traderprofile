# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :operations
  resources :stocks
  devise_for :users

  root to: 'stocks#index'
end
