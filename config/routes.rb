Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'blog#home'
  get 'about', to: 'blog#about'

  resources :articles

  get 'signup', to: 'users#new'
  resources :users, except: [:new] 
end
