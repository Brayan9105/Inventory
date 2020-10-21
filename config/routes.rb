Rails.application.routes.draw do
  resources :categories
  resources :clients
  resources :suppliers
  resources :products

  devise_for :users, except: [:show]
  
  get 'pages/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
