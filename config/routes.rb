Rails.application.routes.draw do
  get 'clients/index'
  post 'clients/import'
  resources :events
  get 'welcome/index'

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
