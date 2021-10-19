Rails.application.routes.draw do
  get 'login', to: 'sessions#new', as: 'login' 
  post 'login', to: 'sessions#create'
  delete 'login', to: 'session#destroy' 
  resources :characters
  resources :issues
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
