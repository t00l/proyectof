Rails.application.routes.draw do
  get 'perfil/index'

  get 'perfil/show'

  get 'perfil/update'

  get 'users/all', to: 'users#all', as: 'show_all'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :perfil, :only =>[:index,:show,:update]
end
