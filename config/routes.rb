Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'cads#index'
  resources :cads
  get 'app', to: 'cads#app'
  get 'download', to: 'cads#download'
end
