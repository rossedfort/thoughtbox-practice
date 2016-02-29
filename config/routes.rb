Rails.application.routes.draw do
  root 'welcome#root'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :users, except: [:index]
  resources :links, except: [:new]
end
