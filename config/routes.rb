Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cads#index'

  get 'cads/download/:id', to: 'cads#download', as: 'download_design'
  resources :cads

  get 'app', to: 'cads#app'
  get 'all', to: 'cads#all'
  
end
