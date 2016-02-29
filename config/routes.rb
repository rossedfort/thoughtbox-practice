Rails.application.routes.draw do
  root 'welcome#root'

  resources :users, except: [:index]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'
end
