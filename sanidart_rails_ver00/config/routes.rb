Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'home#index'
  
  get 'works', to: 'home#index'
    
  resources :profiles
  
  resources :pages
  
  resources :posts

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
