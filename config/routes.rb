Rails.application.routes.draw do
  get 'welcome/index', to: "welcome#index", as: 'homepage'
  get "signup", to: "users#new"
  get 'login', to: 'sessions#new', as: 'login' 
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'prices', to: "prices#index"
  get 'schedule', to: "activities#index", as: 'schedule'
  resources :instructors do
    resources :users, only: [:show]
  end
  resources :activities
  resources :users 
    
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
