Rails.application.routes.draw do
  root 'welcome#root'

  resources :users, except: [:index]
end
